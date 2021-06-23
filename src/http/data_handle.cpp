#include "data_handle.hpp"
#include "reply.hpp"
#include <boost/lexical_cast.hpp>
#include <iostream>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

using namespace std;

namespace http
{
    void data_process(string data, server::reply &rep)
    {
        //data_process
        cout << data << endl;

        // json是　{ "a": 2}
        string c = "{\"data\":2}"; //c为json串
        istringstream iss;
        iss.str(c);

        boost::property_tree::ptree item;
        boost::property_tree::json_parser::read_json(iss, item);
        int n = item.get<int>("data");
        cout << "n:" << n << endl;

        std::stringstream stream;
        boost::property_tree::write_json(stream, item);
        cout << stream.str() << endl;
        cout << strlen(stream.str().data()) << "stream.str()" << stream.str().data() << endl;

        // //data_reply
        // char buf[] = "re";
        rep.content.append(stream.str().data(), strlen(stream.str().data()));
    }

    void data_ret(string req, server::reply &rep)
    {
        // Request path must be absolute and not contain "..".
        if (req.empty() || req[0] != '/' || req.find("..") != string::npos)
        {
            rep = server::reply::stock_reply(server::reply::bad_request);
            return;
        }

        rep.status = server::reply::ok;

        rep.headers.resize(2);

        rep.headers[0].name = "Content-Length";
        rep.headers[0].value = boost::lexical_cast<string>(rep.content.size());

        rep.headers[1].name = "Content-Type";
        rep.headers[1].value = "application/json;charset=utf-8";
    }

} // namespace http
