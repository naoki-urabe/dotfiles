if [ ! -d "$HOME/.asdf" ]; then
  git clone https://github.com/asdf-vm/asdf.git --branch v0.16.0
fi
# .tool-versionsにあるプラグインをすべて追加
cut -d ' ' -f 1 ./.tool-versions | while read plugin; do
  echo $plugin
  if ! asdf plugin list | grep -q "^$plugin$"; then
    asdf plugin add "$plugin"
  fi
done

# インストールを実行
asdf install