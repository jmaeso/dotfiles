# PS1 style conf
source ~/.bash_custom

# private env vars
source ~/.env

# kubernetes ENV var
export CLUSTER_ENVIRONMENT=development

# Golang
export GOPATH=~/Code/go
[[ ":$PATH:" =~ ":$GOPATH/bin:" ]] || PATH="$PATH:$GOPATH/bin"

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh ]

# fzf - fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash ]

# kube-ps1 (recomended with kubectx)
# enable/disable with `kubeon`/`kubeoff`
source ~/Code/kube-ps1/kube-ps1.sh
export KUBE_PS1_PREFIX=""
export KUBE_PS1_SUFFIX=" 👉  "
export KUBE_PS1_CTX_COLOR=green
export KUBE_PS1_NS_COLOR=yellow
PS1=$PS1"\$(kube_ps1)"

# Increment history size
HISTFILE=~/.bash_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
