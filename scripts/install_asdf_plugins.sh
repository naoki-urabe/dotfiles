#!bin/bash

plugin_names=("chezmoi" "awscli" "terraform" "neovim" "krew" "kubectl" "kubectx" "helm" "tmux" "1password-cli" "golang")
plugin_urls=("https://github.com/joke/asdf-chezmoi.git" \
            "https://github.com/MetricMike/asdf-awscli.git" \
            "https://github.com/asdf-community/asdf-hashicorp.git" \
            "https://github.com/richin13/asdf-neovim.git" \
            "https://github.com/jimmidyson/asdf-krew.git" \
            "https://github.com/asdf-community/asdf-kubectl.git" \
            "https://gitlab.com/wt0f/asdf-kubectx.git" \
            "https://github.com/Antiarchitect/asdf-helm.git" \
            "https://github.com/aphecetche/asdf-tmux.git" \
            "https://github.com/NeoHsu/asdf-1password-cli.git" \
            "https://github.com/kennyp/asdf-golang.git")
idx=0
for i in "${plugin_names[@]}"
do
    echo plugin:${plugin_names[$idx]} is added
    asdf plugin add ${plugin_names[$idx]} ${plugin_urls[$idx]}
    idx=$((idx))+1
done