#  Environment Variables

# general
export SSH_KEY_PATH="~/.ssh/dsa_id"
export TERM=xterm-256color

# encoding
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# applications
export EDITOR='vim'
export BROWSER='google-chrome-beta'

# virtualenvwrapper
export WORKON_HOME=~/docs/envs
export PROJECT_HOME=~/docs/projects
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7

# tmux
[ -n "$TMUX" ] && export TERM=screen-256color

# path
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.rvm/bin:$PATH"
if which ruby > /dev/null 2>&1 && which gem >/dev/null; then
    PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
arcanist_path="$HOME/.local/share/arcanist"
[ -x "$arcanist_path" ] &&
    export PATH="$PATH:$arcanist_path/bin" &&
    source "$arcanist_path/resources/shell/bash-completion"

export GOPATH=~/.go && mkdir -p $GOPATH
export PATH="$GOPATH/bin:$PATH"

export PATH="/opt/vc/bin:$PATH"

# history
HIST_STAMPS="yyyy-mm-dd"
HISTFILE=~/.zsh_history
HISTSIZE=130000
SAVEHIST=130000

# shell
CASE_SENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
BULLETTRAIN_DIR_CONTEXT_SHOW=true
export KEYTIMEOUT=1
