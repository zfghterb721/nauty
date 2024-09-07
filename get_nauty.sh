#!/bin/bash

# Download the tar.gz file
wget https://pallini.di.uniroma1.it/nauty2_8_9.tar.gz

# Untar the file
tar -xzf nauty2_8_9.tar.gz

# Cleanup: remove the tar.gz file
rm nauty2_8_9.tar.gz

cd nauty2_8_9
./configure
make

# Add nauty2_8_9 to the PATH
echo "export PATH=$PATH:$(pwd)" >> ~/.bashrc
source ~/.bashrc

