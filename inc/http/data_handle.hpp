#ifndef _DATA_HANDLE_
#define _DATA_HANDLE_

#include "reply.hpp"

namespace http
{
    void data_ret(std::string req, server::reply &rep);
    void data_process(std::string data, server::reply &rep);
} // namespace http

#endif
