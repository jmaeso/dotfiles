# PS1 style conf
source ~/.bash_custom

# private env vars
source ~/.env

# kubernetes ENV var
export CLUSTER_ENVIRONMENT=development

# Golang
export GOPATH=~/Code/go
PATH=$PATH:$GOPATH/bin

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh ]

# fzf - fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash ]

# Increment history size
HISTFILE=~/.bash_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
