export EDITOR='vim'
export TERMINAL='st'
export BROWSER='firefox'
export READER='zathura'
export PATH="$HOME/bin:$PATH"

if [ -d "$HOME/git/scripts" ] && [[ ":$PATH:" != *":$HOME/git/scripts:"* ]]; then
  export PATH="$HOME/git/scripts:$PATH"
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
