//
// connection.cpp
// ~~~~~~~~~~~~~~
//
// Copyright (c) 2003-2020 Christopher M. Kohlhoff (chris at kohlhoff dot com)
//
// Distributed under the Boost Software License, Version 1.0. (See accompanying
// file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
//

#include "connection.hpp"
#include <vector>
#include <boost/bind/bind.hpp>
#include "request_handler.hpp"
#include <boost/algorithm/string.hpp>
#include <iostream>
#include "data_handle.hpp"

namespace http
{
    namespace server
    {

        connection::connection(boost::asio::io_context &io_context,
                               request_handler &handler)
            : socket_(io_context),
              request_handler_(handler)
        {
        }

        boost::asio::ip::tcp::socket &connection::socket()
        {
            return socket_;
        }

        void connection::start()
        {
            socket_.async_read_some(boost::asio::buffer(buffer_),
                                    boost::bind(&connection::handle_read, shared_from_this(),
                                                boost::asio::placeholders::error,
                                                boost::asio::placeholders::bytes_transferred));
        }

        void connection::handle_read(const boost::system::error_code &e,
                                     std::size_t bytes_transferred)
        {
            if (!e)
            {
                std::string this_data(buffer_.data(), bytes_transferred);
                data_.append(this_data);

                int header_end = data_.find("\r\n\r\n"); //http协议的头部结束标识
                if (header_end < 0)
                {
                    socket_.async_read_some(boost::asio::buffer(buffer_),
                                            boost::bind(&connection::handle_read, shared_from_this(),
                                                        boost::asio::placeholders::error,
                                                        boost::asio::placeholders::bytes_transferred));
                    return;
                }

                boost::tribool result;
                if (!is_header_parsed)
                {
                    boost::tie(result, boost::tuples::ignore) = request_parser_.parse(
                        request_, buffer_.data(), buffer_.data() + bytes_transferred);
                }

                if (is_header_parsed || result)
                {
                    is_header_parsed = true;

                    std::string length_str;
                    for (int i = 0; i < request_.headers.size(); i++)
                    {
                        if (boost::algorithm::iequals(request_.headers[i].name, "content-length"))
                        {
                            length_str = request_.headers[i].value;
                            break;
                        }
                    }

                    int content_length = 0;
                    if (!length_str.empty())
                    {
                        content_length = atoi(length_str.c_str());
                    }

                    if (data_.size() < (content_length + header_end + 4))
                    { //数据不全，继续接受tcp数据
                        socket_.async_read_some(boost::asio::buffer(buffer_),
                                                boost::bind(&connection::handle_read, shared_from_this(),
                                                            boost::asio::placeholders::error,
                                                            boost::asio::placeholders::bytes_transferred));

                        return;
                    }

                    //data_ = utf8_to_ascii(data_);//

                    request_parser_.parse_param(request_, data_); //新加的方法
                    // data_process(data_, reply_);                       //解析post表单
                    data_process(data_, reply_); //解析json

                    request_handler_.handle_request(request_, reply_); //数据返回
                    boost::asio::async_write(socket_, reply_.to_buffers(),
                                             boost::bind(&connection::handle_write, shared_from_this(),
                                                         boost::asio::placeholders::error));
                }
                else if (!result)
                {
                    reply_ = reply::stock_reply(reply::bad_request);
                    boost::asio::async_write(socket_, reply_.to_buffers(),
                                             boost::bind(&connection::handle_write, shared_from_this(),
                                                         boost::asio::placeholders::error));
                }
                else
                {
                    socket_.async_read_some(boost::asio::buffer(buffer_),
                                            boost::bind(&connection::handle_read, shared_from_this(),
                                                        boost::asio::placeholders::error,
                                                        boost::asio::placeholders::bytes_transferred));
                }
            }

            // If an error occurs then no new asynchronous operations are started. This
            // means that all shared_ptr references to the connection object will
            // disappear and the object will be destroyed automatically after this
            // handler returns. The connection class's destructor closes the socket.
        }

        void connection::handle_write(const boost::system::error_code &e)
        {
            if (!e)
            {
                // Initiate graceful connection closure.
                boost::system::error_code ignored_ec;
                socket_.shutdown(boost::asio::ip::tcp::socket::shutdown_both, ignored_ec);
            }

            // No new asynchronous operations are started. This means that all shared_ptr
            // references to the connection object will disappear and the object will be
            // destroyed automatically after this handler returns. The connection class's
            // destructor closes the socket.
        }

    } // namespace server
} // namespace http
