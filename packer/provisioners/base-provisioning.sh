##!/bin/bash

application_file_path="/vagrant/installed-application.md"

# sudo apt install software-properties-common 
sudo apt update

# Install Supporting Software
sudo apt install -y software-properties-common

# Install Python3
sudo apt install python3 python3-pip -y

# delete .cache
sudo rm -fr /home/vagrant/.cache

PYTHON3_VERSION=$(python3 --version | awk  '{print $2}')
PIP3_VERSION=$(pip3 --version | awk  '{print $2}')
echo "# Installed application   "  > $application_file_path
echo "***                       " >> $application_file_path
echo "> python3 $PYTHON3_VERSION" >> $application_file_path
echo "> pip3 $PIP3_VERSION" >> $application_file_path
