#!/bin/bash
BIN_PATH="bin/test_app"
clear
rm ${BIN_PATH}
cd build
cmake ..
make
cd ..
chmod 755 ${BIN_PATH}
echo -e "build finish"
./${BIN_PATH}
