# Kyle's ZSH config file

# Enable colours
autoload -U colors && colors
PS1="%B[%{$fg[green]%}%n@%M %{$fg[blue]%}%~%{$reset_color%}]$%b "

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Load aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
