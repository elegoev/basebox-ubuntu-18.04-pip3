##!/bin/bash

application_file_path="/vagrant/installed-application.md"

# install pip3
sudo apt install python3-pip -y

PYTHON3_VERSION=$(python3 --version | awk  '{print $2}')
PIP3_VERSION=$(pip3 --version | awk  '{print $2}')
echo "# Installed application   "  > $application_file_path
echo "***                       " >> $application_file_path
echo "> python $PYTHON3_VERSION" >> $application_file_path
echo "> pip $PIP3_VERSION" >> $application_file_path
