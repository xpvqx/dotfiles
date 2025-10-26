export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL='st'
export BROWSER='firefox'
export READER='zathura'
export PATH="$HOME/bin:$PATH"

if [ -d "$HOME/git/scripts" ] && [[ ":$PATH:" != *":$HOME/git/scripts:"* ]]; then
  export PATH="$HOME/git/scripts:$PATH"
fi

if [[ $(tty) == /dev/tty* ]]; then
    fastfetch
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
