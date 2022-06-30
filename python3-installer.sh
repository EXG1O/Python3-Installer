#!/bin/bash

echo "Enter the version of Python you wanna to install (Example: 3.9.0):"
read python_version

wget https://www.python.org/ftp/python/$python_version/Python-$python_version.tgz
tar -zxvf Python-$python_version.tgz

mkdir /usr/local/python3
cd Python-$python_version/
./configure --prefix=/usr/local/python3
make
make install

sudo rm -rf /usr/bin/python3 /usr/bin/pip3
sudo ln -s /usr/local/python3/bin/python$python_version /usr/bin/python3
sudo ln -s /usr/local/python3/bin/pip$python_version /usr/bin/pip3

echo "Successful installation Python $python_version!"