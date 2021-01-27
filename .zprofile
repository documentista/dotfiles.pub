# Set up zsh profile

eval `ssh-agent`
ssh-add ~/.ssh/id_rsa ~/.ssh/github_rsa > /dev/null
export PATH="/usr/local/opt/node@12/bin:$PATH"
export SAM=/usr/bin/python3

. ~/.zprofile.mine

