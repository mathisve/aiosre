#!/bin/bash

echo "Installing apt packages"
apt-get -qq update
apt-get -qq install sudo apt-utils net-tools git htop nano wget dnsutils curl unzip build-essential make -y
apt-get -qq upgrade -y
apt-get -qq autoremove
