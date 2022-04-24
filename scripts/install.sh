#!/bin/bash
source .env
sudo apt update
sudo apt-get update
sudo apt -y install neovim tmux zsh build-essential unzip
curl https://cache.agilebits.com/dist/1P/op/pkg/v1.12.2/op_linux_amd64_v1.12.2.zip -o op_linux_amd64_v1.12.2.zip 
unzip -f op_linux_amd64_v1.12.2.zip
rm *.zip
sudo cp ./op /usr/local/bin
./op signin $ONE_PASSWORD_DOMAIN $ONE_PASSWORD_MAIL_ADDRESS $ONE_PASSWORD_SECRET_KEY

#install kubectl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get install -y kubectl

#install  cloudSDK
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get -y install google-cloud-sdk

