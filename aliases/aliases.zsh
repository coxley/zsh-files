#  Aliases

# history
alias hist10="history | awk '{print $4}' | sort | uniq -c | sort -nr | head"
alias hist20="history | awk '{print $4}' | sort | uniq -c | sort -nr \
              | head -20"

# General system
alias tmux='tmux -2'
alias psgrep='ps aux | grep'
alias cdburn='wodim -v -sao dev=/dev/sr0'
alias mkfs.ntfs='mkfs.ntfs -f'

if hash hub 2> /dev/null; then
    alias git='hub'
fi

# network
alias sshproxy='ssh -C2qTnN -D 0.0.0.0:8080'
alias openconnect='sudo openconnect -b --pid-file /var/run/vpnc/openconnect.pid'
alias speedtest='echo "scale=2; `curl --progress-bar -w "%{speed_download}" \
                 http://speedtest.wdc01.softlayer.com/downloads/test100.zip  \
                 -o /dev/null` / 131072" | bc | xargs -I {} echo {} mbps'
alias sortip='sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n'

# docker
if hash docker 2> /dev/null; then
    alias drm="docker rm"
    alias dps="docker ps"
    alias dcreboot="docker-compose stop && docker-compose up -d"
fi

# ZSH Global Aliases
alias -g L=' | less'
alias -g T=' | tail -20'
alias -g NUL=' > /dev/null 2>&1'

# Files
#
LS_CMD='ls --group-directories-first --color=tty -X'
$LS_CMD 1>&2 2> /dev/null
if [ "$?" != 0 ]; then
    alias ls=$LS_CMD
fi

alias diff='diff -uNr'
alias perms='stat -c "%A %a %n"'
alias mplayer='mpv'

alias cp='cp --backup=numbered'
alias ln='ln --backup=numbered'
alias mv='mv -f --backup=numbered'

# vim
nvim_path=$(which nvim)
if [ -x "$nvim_path" ] ; then
    alias vim='nvim'
else
    alias vim='vim'
fi

alias last_scrot='feh /tmp/$(ls -1tr /tmp | tail -1)'
