# dotfiles

## 環境構築手順
1. personal.yamlを以下の形式で作成し、dotfiles内に含めてください
```
USER: ホストマシンのユーザ名
EMAIL: 利用しているemail
GITHUB_USERNAME: Githubのユーザ名
```

2. bash init.shを実行し、ansibleをインストールしてください
3. make run-for-windowsを実行し、asdfをインストールしてください
4. ホームディレクトリに.zshrcを作成し、中に以下の記述を行ってください
```
. $HOME/.asdf/asdf.sh
```
5. 以下のコマンドを実行し、.zshrcの変更を読み込んでください
```
source ~/.zshrc
```
6. 以下のコマンドを実行し、asdf経由でchezmoi,1password-cliのインストールを行ってください
```
make run-asdf-package-preinstall
```
7. 以下のコマンドを実行し、dotfilesのdotfileをホームディレクトリ以下に配置してください。また、コマンド実行時に1password-cliの設定を指示に従い行ってください
```
chezmoi init --apply --verbose https://github.com/username/dotfiles.git
```
8. ここまでの手順を行ったのち、.zhsrcを読み込ませるため、一旦端末を閉じてください。
9. 再度端末を開いたとき、zshのテーマ設定が行われるため、指示に従い、設定を行ってください
10. 以下のコマンドを打ち、必要なcli群をインストールしてください 
```
asdf install
```
11. chezmoi管理の.git/configの通信方式をssh方式に変えておいてください。
12. 以上で完了です。お疲れさまでした!