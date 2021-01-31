# Path to your oh-my-zsh installation.
export ZSH="/home/atom/.oh-my-zsh"
ZSH_THEME="dracula"
plugins=(git virtualenv)

# Paths
export PATH=$HOME/bin:/usr/local/bin:$PATH:/usr/local/go/bin:$GOPATH/bin
export GOPATH=$HOME/go

# aliases
alias vim="nvim"
alias vimconfig="vim ~/.config/nvim/init.vim"

if [ -z "$SSH_AUTH_SOCK" ] ; then
      eval `ssh-agent`
          ssh-add
fi

source $ZSH/oh-my-zsh.sh
