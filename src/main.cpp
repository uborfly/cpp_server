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
        // // Check command line arguments.
        // if (argc != 5)
        // {
        //     std::cerr << "Usage: http_server <address> <port> <threads> <doc_root>\n";
        //     std::cerr << "  For IPv4, try:\n";
        //     std::cerr << "    receiver 0.0.0.0 80 1 .\n";
        //     std::cerr << "  For IPv6, try:\n";
        //     std::cerr << "    receiver 0::0 80 1 .\n";
        //     return 1;
        // }
        std::string ip_address = "0.0.0.0";
        std::string port = "8081";
        std::string doc_root = "/root/cpp_server/docs";
        std::size_t num_threads = 300;
        // Initialise the server.
        // std::size_t num_threads = boost::lexical_cast<std::size_t>(argv[3]);
        http::server2::server s(ip_address, port, doc_root, num_threads);

        // Run the server until stopped.
        s.run();
    }
    catch (std::exception &e)
    {
        std::cerr << "exception: " << e.what() << "\n";
    }

    return 0;
}
