#include "data_handle.hpp"
#include "reply.hpp"
#include <boost/lexical_cast.hpp>

namespace http
{
    void data_process(std::string req, server::reply &rep)
    {
        // Request path must be absolute and not contain "..".
        if (req.empty() || req[0] != '/' || req.find("..") != std::string::npos)
        {
            rep = server::reply::stock_reply(server::reply::bad_request);
            return;
        }

        rep.status = server::reply::ok;
        // char buf[512];
        // while (is.read(buf, sizeof(buf)).gcount() > 0)
        //     rep.content.append(buf, is.gcount());
        rep.content.append("ret", 3);
        rep.headers.resize(2);

        rep.headers[0].name = "Content-Length";
        rep.headers[0].value = boost::lexical_cast<std::string>(rep.content.size());
        // rep.headers[0].value = "";

        rep.headers[1].name = "Content-Type";
        // rep.headers[1].value = mime_types::extension_to_type(extension);
        rep.headers[1].value = "application/json;charset=utf-8";
    }

} // namespace http