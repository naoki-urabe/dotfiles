sudo apt update && \
sudo apt install -y git curl neovim zsh tmux && \
chsh -s $(which zsh) && \
curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh \
    | sudo bash -s -- --repo rossmacarthur/sheldon --to /usr/local/bin -f && \
curl -sS https://starship.rs/install.sh | sh && \
bash link_config.sh && \
echo "デフォルトシェルを反映するため、ログインし直してください"