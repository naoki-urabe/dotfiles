#!/bin/bash
sudo apt update
sudo apt install -y build-essential unzip zlib1g-dev libssl-dev tree
make install-ansible
