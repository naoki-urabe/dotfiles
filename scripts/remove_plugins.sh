#!bin/bash

plugin_names=("chezmoi" "awscli" "terraform" "neovim" "krew" "kubectl" "kubectx" "helm" "tmux" "1password-cli")

idx=0
for i in "${plugin_names[@]}"
do
    asdf plugin remove ${plugin_names[idx]}
    idx=$((idx))+1
done