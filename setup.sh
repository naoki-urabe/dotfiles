sudo apt update
sudo apt install -y git curl neovim
for f in .??*; do
    ln -snfv ${PWD}/"$f" ~/
done