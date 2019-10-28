# PS1 style conf
source ~/.bash_custom

# private env vars
source ~/.env
PATH=$PATH:/usr/local/sbin

# kubernetes ENV var
export CLUSTER_ENVIRONMENT=development

# gcloud command line tools
source ~/google-cloud-sdk/path.bash.inc
# gcloud command autocompletion
source ~/google-cloud-sdk/completion.bash.inc

# Golang
export GOPATH=~/Code/go
export GOBIN=$GOPATH/bin
[[ ":$PATH:" =~ ":$GOPATH/bin:" ]] || PATH="$PATH:$GOPATH/bin"

export PATH="$HOME/Code/flutter/bin:$PATH"

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh ]

# fzf - fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash ]

# kube-ps1 (recomended with kubectx)
# enable/disable with `kubeon`/`kubeoff`
source ~/Code/kube-ps1/kube-ps1.sh
export KUBE_PS1_PREFIX=""
export KUBE_PS1_SUFFIX=" 👉 "
export KUBE_PS1_CTX_COLOR=green
export KUBE_PS1_NS_COLOR=yellow
PS1=$PS1"\$(kube_ps1)"

# Increment history size
HISTFILE=~/.bash_history
HISTSIZE=""
SAVEHIST=$HISTSIZE
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export PATH="$HOME/.cargo/bin:$PATH"

# For neog4 go driver:
export OPENSSL_ROOT_DIR="/usr/local/opt/openssl"
export PKG_CONFIG_PATH="/usr/local/share/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig:$PKG_CONFIG_PATH"
export LD_LIBRARY_PATH="/usr/local/lib"

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

export NODE_PATH="/usr/local/lib/node_modules"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/paack/google-cloud-sdk/path.bash.inc' ]; then source '/Users/paack/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/paack/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/paack/google-cloud-sdk/completion.bash.inc'; fi

# The next line enables shell branch completion for git.
  [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH="/usr/local/opt/openssl/bin:$PATH"
