//
// request.hpp
// ~~~~~~~~~~~
//
// Copyright (c) 2003-2020 Christopher M. Kohlhoff (chris at kohlhoff dot com)
//
// Distributed under the Boost Software License, Version 1.0. (See accompanying
// file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
//

#ifndef HTTP_SERVER2_REQUEST_HPP
#define HTTP_SERVER2_REQUEST_HPP

#include <string>
#include <vector>
#include "header.hpp"

namespace http
{
    namespace server
    {

        /// A request received from a client.
        struct request
        {
            std::string method;
            std::string uri;
            int http_version_major;
            int http_version_minor;
            std::vector<header> headers;
            std::string short_uri;      //客户端请求的uri，去掉‘?’后面的参数
            std::vector<header> params; //客户端请求所带的参数，包括get和post表单里的参数
        };

    } // namespace server
} // namespace http

#endif // HTTP_SERVER2_REQUEST_HPP
