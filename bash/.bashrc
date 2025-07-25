# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[38;5;254;1m\]\u\[\e[0;97m\] \[\e[0m\][\[\e[2m\]\w\[\e[0m\]] \[\e[1m\]>\[\e[0m\] '

force_color_prompt=yes

# custom alias
alias c='clear'
alias ll='ls -l'
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias py='python3'
alias mkc='sudo make clean install'
alias p='sudo pacman'
alias nv='nvim'
alias snv='sudo -E -s nvim'
alias SS='sudo systemctl'
alias r='ranger'
alias sr='sudo ranger'
alias scrot='scrot ~/pics/screenshots/%b%d::%H%M%S.png'

# maintainence
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias sdn='sudo shutdown now'

# mount
alias syn='sudo mount -t cifs //192.168.1.90/homes/karl /mnt/synology/home -o username=karl,uid=1000,gid=1000,file_mode=0775,dir_mode=0775 && sudo mount -t nfs 192.168.1.90:/volume1/media /mnt/synology/media'

# scripts
alias xm4='~/git/scripts/bluetooth.sh'

# ssh to servers
alias archetype='ssh root@192.168.1.111'
alias optiplex='ssh karl@192.168.1.100'
alias proxmox2='ssh root@192.168.1.200'
alias docker2='ssh karl@192.168.1.55'

alias pi4='ssh karl@192.168.125'
alias pihole='ssh pi@192.168.1.150'
alias printserver='ssh pi@192.168.1.175'
alias plex='ssh root@192.168.1.50'

alias kobo='ssh root@192.168.1.217'
alias oneplus='ssh 192.168.1.47 -p 8022'

# navigation
alias ...='../..'
alias ....='../../..'
alias nas='cd /mnt/synology'
alias dots='cd ~/git/dotfiles'
alias gpy='cd ~/git/python'

export EDITOR='nvim'

export LS_COLORS='di=1;38;5;180:ln=1;38;5;223:so=1;38;5;137:pi=1;38;5;137:ex=1;38;5;215:bd=1;38;5;173:cd=1;38;5;173:su=1;38;5;174:sg=1;38;5;166:tw=1;38;5;180:ow=1;38;5;180:st=1;38;5;137:mi=1;38;5;124:or=1;38;5;202:*.tar=1;38;5;172:*.zip=1;38;5;172:*.gz=1;38;5;180:*.xz=1;38;5;180:*.7z=1;38;5;180:*.mp3=1;38;5;223:*.ogg=1;38;5;223:*.flac=1;38;5;223:*.jpg=1;38;5;144:*.jpeg=1;38;5;144:*.png=1;38;5;144:*.gif=1;38;5;144:*.bmp=1;38;5;144:*.pdf=1;38;5;173:*.tex=1;38;5;180:*.doc=1;38;5;180:*.docx=1;38;5;180:*.odt=1;38;5;180:*.c=1;38;5;137:*.cpp=1;38;5;137:*.h=1;38;5;180:*.py=1;38;5;215:*.sh=1;38;5;215:*.go=1;38;5;180:*.rs=1;38;5;173:*.js=1;38;5;215:*.ts=1;38;5;223:*.json=1;38;5;223:*.xml=1;38;5;223:*.html=1;38;5;180:*.css=1;38;5;180'
