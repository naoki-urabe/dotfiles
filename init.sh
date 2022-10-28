#!/bin/bash
sudo apt update
sudo apt install -y build-essential unzip zlib1g-dev libssl-dev tree autotools-dev autoconf pkg-config
make install-ansible
