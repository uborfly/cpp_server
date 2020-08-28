#!/bin/bash
clear
cmake ..
make
echo -e "\nfinish"
cp ./../bin/cpp_server /var/www/cgi-bin/api.cgi
chmod 755 /var/www/cgi-bin/api.cgi
