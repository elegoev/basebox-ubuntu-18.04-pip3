##!/bin/bash

application_file_path="/vagrant/installed-application.md"

# install pip3
while :
do
  sudo apt install python3-pip -y
  retcode=$?
  if [ $retcode -eq 0 ]; then
    break
  fi
  echo "sleep 5s ..."
  sleep 5
done

# delete .cache
sudo rm -fr /home/vagrant/.cache

PYTHON3_VERSION=$(python3 --version | awk  '{print $2}')
PIP3_VERSION=$(pip3 --version | awk  '{print $2}')
echo "# Installed application   "  > $application_file_path
echo "***                       " >> $application_file_path
echo "> python $PYTHON3_VERSION" >> $application_file_path
echo "> pip $PIP3_VERSION" >> $application_file_path
