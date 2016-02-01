#  Environment Variables

# general
export SSH_KEY_PATH="~/.ssh/dsa_id"
export TERM=xterm-256color

# encoding
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# applications
export EDITOR='vim'
export BROWSER='firefox'

# virtualenvwrapper
export WORKON_HOME=~/docs/envs
export PROJECT_HOME=~/docs/projects
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7

# tmux
[ -n "$TMUX" ] && export TERM=screen-256color

# path
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/opt/vc/bin"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.local/bin"
if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
arcanist_path="$HOME/.local/share/arcanist"
[ -x "$arcanist_path" ] &&
    export PATH="$PATH:$arcanist_path/bin" &&
    source "$arcanist_path/resources/shell/bash-completion"

export GOPATH=~/.go && mkdir $GOPATH
export PATH="$PATH:$GOPATH/bin"


# history
HIST_STAMPS="yyyy-mm-dd"
HISTFILE=~/.zsh_history

# shell
CASE_SENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
BULLETTRAIN_DIR_CONTEXT_SHOW=true
