# dotfiles

personal.yamlを作成し
USER: ホストマシンのユーザ名
EMAIL: 利用しているemail
GITHUB_USERNAME: Githubのユーザ名
を指定してください

chezmoi install後には.gitのconfigをhttp->sshに変更してください
以下を実行し、1passwordにログインしてください
op account add --address $SUBDOMAIN.1password.com --email $EMAIL
eval $(op signin --account $SUBDOMAIN)