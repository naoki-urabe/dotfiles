#!bin/bash

plugin_names=("chezmoi" "awscli" "terraform" "neovim" "krew" "kubectl" "kubectx" "helm" "tmux" "1password-cli" "golang" "hugo" "nodejs" "ruby")

idx=0
for i in "${plugin_names[@]}"
do
    echo plugin:${plugin_names[$idx]} is added
    asdf plugin add ${plugin_names[$idx]}
    idx=$((idx))+1
done