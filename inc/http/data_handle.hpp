#ifndef _DATA_HANDLE_
#define _DATA_HANDLE_

#include "reply.hpp"

namespace http
{
    void data_process(std::string req, server::reply &rep);
} // namespace http

#endif
