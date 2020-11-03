#!/bin/sh

echo "compiling g++ on GNU/Linux x64"
make PLATFORM=linux64 CLANG=0 -B

echo -e "\ncompiling clang on GNU/Linux x64"
make PLATFORM=linux64 CLANG=1 -B

echo -e "\ncompiling g++ on GNU/Linux x32"
make PLATFORM=linux32 CLANG=0 -B

echo -e "\ncompiling clang on GNU/Linux x32"
make PLATFORM=linux32 CLANG=1 -B
