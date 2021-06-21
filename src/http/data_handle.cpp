#include "data_handle.hpp"
#include "reply.hpp"
#include <boost/lexical_cast.hpp>
#include <iostream>

namespace http
{
    void data_process(std::string data, server::reply &rep)
    {
        //data_process
        std::cout << data << std::endl;
        //data_reply
        char buf[] = "re";

        rep.content.append(buf, sizeof(buf));
    }

    void data_ret(std::string req, server::reply &rep)
    {
        // Request path must be absolute and not contain "..".
        if (req.empty() || req[0] != '/' || req.find("..") != std::string::npos)
        {
            rep = server::reply::stock_reply(server::reply::bad_request);
            return;
        }

        rep.status = server::reply::ok;

        rep.headers.resize(2);

        rep.headers[0].name = "Content-Length";
        rep.headers[0].value = boost::lexical_cast<std::string>(rep.content.size());

        rep.headers[1].name = "Content-Type";
        rep.headers[1].value = "application/json;charset=utf-8";
    }

} // namespace http
