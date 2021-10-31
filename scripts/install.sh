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

#install docker
sudo apt-get install \
  ca-certificates \
  curl \
  gnupg \
  lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER

echo "exec fish" >> ~/.bashrc
