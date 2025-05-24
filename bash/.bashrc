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
alias xm4='~/git/scripts/bluetooth.sh'

# mount
alias syn1=alias syn1='sudo mount -t cifs //192.168.1.90/homes/karl /mnt/home -o username=karl'
alias syn2=alias syn2='sudo mount -t nfs 192.168.1.90:/volume1/media /mnt/media'

# ssh devices
alias kobo='ssh root@192.168.1.217'
alias docker='ssh karl@192.168.1.100'
alias proxmox='ssh root@192.168.1.200'

# navigation
alias nas='cd /mnt/synology'
alias dots='cd ~/git/dotfiles'
alias gpy='cd ~/git/python'

# LS_COLORS=$LS_COLORS:'di=1;36:' ; export LS_COLORS
# LS_COLORS+=':ow=34'

# ls colors
export LS_COLORS='di=1;38;5;180:ln=1;38;5;223:so=1;38;5;137:pi=1;38;5;137:ex=1;38;5;215:bd=1;38;5;173:cd=1;38;5;173:su=1;38;5;174:sg=1;38;5;166:tw=1;38;5;180:ow=1;38;5;180:st=1;38;5;137:mi=1;38;5;124:or=1;38;5;202:*.tar=1;38;5;172:*.zip=1;38;5;172:*.gz=1;38;5;180:*.xz=1;38;5;180:*.7z=1;38;5;180:*.mp3=1;38;5;223:*.ogg=1;38;5;223:*.flac=1;38;5;223:*.jpg=1;38;5;144:*.jpeg=1;38;5;144:*.png=1;38;5;144:*.gif=1;38;5;144:*.bmp=1;38;5;144:*.pdf=1;38;5;173:*.tex=1;38;5;180:*.doc=1;38;5;180:*.docx=1;38;5;180:*.odt=1;38;5;180:*.c=1;38;5;137:*.cpp=1;38;5;137:*.h=1;38;5;180:*.py=1;38;5;215:*.sh=1;38;5;215:*.go=1;38;5;180:*.rs=1;38;5;173:*.js=1;38;5;215:*.ts=1;38;5;223:*.json=1;38;5;223:*.xml=1;38;5;223:*.html=1;38;5;180:*.css=1;38;5;180'
export EDITOR=nvim
export EDITOR=nvim
