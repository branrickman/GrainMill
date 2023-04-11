#!/bin/bash

# Install Hashcat Password Cracker
curl -o hashcat-3.6.0.7z https://hashcat.net/files/hashcat-3.6.0.7z

# Unzip and create a symlink shortcut to the binary named "hc"
7zr x hashcat-3.6.0.7z
cd hashcat-3.6.0/
ln -s hashcat64.bin hc

# Run Benchmark
echo 'Running Benchmark:\n"
./hc -b
