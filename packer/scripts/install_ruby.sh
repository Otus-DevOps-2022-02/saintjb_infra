#!/bin/sh
sudo apt update -y
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/lib/dpkg/lock
sudo dpkg --configure -a
sudo apt install -y ruby-full ruby-bundler build-essential
