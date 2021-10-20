#!/bin/bash
sudo apt update
sudo apt -y install neovim
sudo apt -y install tmux
sudo apt -y install fish
echo "exec fish" >> ~/.bashrc
