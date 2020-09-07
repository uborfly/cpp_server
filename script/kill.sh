#!/bin/bash
if [ -z "$(ps -ef | grep test_app | grep -v grep)" ];then
    echo -e "test_app empty"
else
    kill -9 $(ps -ef | grep test_app | grep -v grep | awk '{print $2}')
fi
