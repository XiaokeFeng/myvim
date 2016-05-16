#!/bin/sh
CSCOPE="./cscope.file"
find . -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.hpp" > ${CSCOPE}
cscope -bkq -i ${CSCOPE}
