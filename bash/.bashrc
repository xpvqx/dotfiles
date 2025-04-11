# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='\[\e[38;5;254;1m\]\u\[\e[0m\] \[\e[38;5;254m\][\w]\[\e[0m\] \[\e[38;5;254m\]>\[\e[0m\] '

force_color_prompt=yes

# custom alias
alias c='clear'
alias ll='ls -l'
alias py='python3'
alias mkc='sudo make clean install'
alias pacsyu='sudo pacman -Syu'
alias yaysyu='yay -Syu'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias scrot='scrot ~/pics/screenshots/%b%d::%H%M%S.png'

# mount
alias syn='sudo mount -t nfs 192.168.1.90:/volume1/media /mnt/synology'
alias uni='sudo mount -t nfs 192.168.1.90:/volume1/university /mnt/university'

# ssh devices
alias ssh-kobo='ssh root@192.168.1.217'
alias ssh-serv-1='ssh karl@192.168.1.100'
alias ssh-serv-2='ssh root@192.168.1.200'

# navigation
alias gnas='cd /mnt/synology'
alias gdots='cd ~/docs/repos/dotfiles'
alias gpy='cd ~/docs/programming/python'

# ls colors
LS_COLORS=$LS_COLORS:'di=1;36:' ; export LS_COLORS
LS_COLORS+=':ow=34'
