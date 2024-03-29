# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	autojump
	fzf
	kube-ps1
	extract
)

source $ZSH/oh-my-zsh.sh

# User configuration

export GOPATH=~/Code/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$GOBIN:$PATH
export GOPRIVATE=github.com/hellofresh

export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:~/Library/Python/3.9/bin

export KUBE_PS1_PREFIX=""
export KUBE_PS1_SUFFIX=" 👉"
export KUBE_PS1_CTX_COLOR="red"
export KUBE_PS1_NS_COLOR="cyan"
export KUBE_PS1_ENABLED=off
PROMPT=$PROMPT'$(kube_ps1) '

# Kafka support for M1 prcessors
# requires: brew install librdkafka openssl
export PKG_CONFIG_PATH=/opt/homebrew/opt/openssl@3/lib/pkgconfig:/opt/homebrew/Cellar/librdkafka/1.8.2/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=/opt/homebrew/opt/openssl@3/lib:"${LD_LIBRARY_PATH}"
export CPATH=/opt/homebrew/opt/openssl@3/include:"${CPATH}"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias python="/opt/homebrew/bin/python3"
alias joke='curl -X GET "https://api.jokes.one/jod" -H  "accept: application/json" -H  "content-type: application/json" -H  "X-JokesOne-Api-Secret: api_key" | jq ".contents.jokes | .[0].joke.text"'

# Temp fix?
# export HOMEBREW_CELLAR="/usr/local/Cellar"

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.env # autoload actually sources .env file too
alias hf="source ~/Code/HelloFresh/dev-cli-tools/autoload"
