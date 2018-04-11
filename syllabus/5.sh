#!/bin/bash
echo "OS and Version, Release Number, Kernel Version:"
uname -a

echo "AVAILABLE SHELLS:"
cat /etc/shells

echo "CPU Information : "$(lscpu)

echo "Memory  Information :"$(free -m)

echo "File system :"$(sudo fdisk -l)

