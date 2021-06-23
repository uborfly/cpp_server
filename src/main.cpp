//
// main.cpp
// ~~~~~~~~
//
// Copyright (c) 2003-2020 Christopher M. Kohlhoff (chris at kohlhoff dot com)
//
// Distributed under the Boost Software License, Version 1.0. (See accompanying
// file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
//

#include <iostream>
#include <string>
#include <boost/asio.hpp>
#include <boost/bind/bind.hpp>
#include <boost/lexical_cast.hpp>
#include "server.hpp"

int main(int argc, char *argv[])
{
    try
    {
        std::string ip_address = "0.0.0.0";
        // std::string ip_address = "192.168.3.125";

        std::string port = "8081";
        std::string doc_root = "/root/cpp_server/docs";
        std::size_t num_threads = 3000;
        http::server::server s(ip_address, port, doc_root, num_threads);

        // Run the server until stopped.
        std::cout << "ip_address:" + ip_address << std::endl
                  << "port:" + port << std::endl
                  << "num_threads:" << num_threads << std::endl;
        s.run();
    }
    catch (std::exception &e)
    {
        std::cerr << "exception: " << e.what() << "\n";
    }

    return 0;
}
