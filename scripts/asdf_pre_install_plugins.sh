plugin_names=("chezmoi" "1password-cli")
for plugin in ${plugin_names[@]}
do
    asdf install $plugin latest
    asdf global $plugin latest
done