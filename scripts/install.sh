#!/bin/bash
source .env
sudo apt update
sudo apt -y install neovim
sudo apt -y install tmux
sudo apt -y install fish
curl https://cache.agilebits.com/dist/1P/op/pkg/v1.12.2/op_linux_amd64_v1.12.2.zip -o op_linux_amd64_v1.12.2.zip 
sudo apt -y install unzip
unzip -f op_linux_amd64_v1.12.2.zip
rm *.zip
./op signin $ONE_PASSWORD_DOMAIN $ONE_PASSWORD_MAIL_ADDRESS $ONE_PASSWORD_SECRET_KEY

echo "exec fish" >> ~/.bashrc
