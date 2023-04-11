#!/bin/bash

# Script to be run after installing Ubuntu OS. 
# NOTE: Run with sudo

# Update Packages
sudo apt update && sudo apt upgrade

# Install packages
sudo apt install -y build-essential p7zip unrar unzip

