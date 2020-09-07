#!/bin/bash
set -e
BIN_PATH="bin/test_app"
clear

if [ -f "$BIN_PATH" ]; then
    rm ${BIN_PATH}
fi

cd build
cmake ..
make
cd ..
chmod 755 ${BIN_PATH}
echo -e "build finish"
# ./${BIN_PATH}
ssh root@47.112.229.111 < script/kill.sh
scp -r bin/test_app root@47.112.229.111:/root/
clear
ssh root@47.112.229.111 < script/start.sh
