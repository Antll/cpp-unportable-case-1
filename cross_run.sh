#!/bin/sh

echo "g++ on GNU/Linux x64:"
./g++_linux64_unportable_case_1

echo -e "\nclang on GNU/Linux x64:"
./clang++_linux64_unportable_case_1

echo -e "\ng++ on GNU/Linux x32:"
./g++_linux32_unportable_case_1

echo -e "\nclang on GNU/Linux x32:"
./clang++_linux32_unportable_case_1
