# Kyle's ZSH config file

# Enable colours
autoload -U colors && colors
PS1="%B[%{$fg[green]%}%n@%M %{$fg[blue]%}%~%{$reset_color%}]$%b "
stty stop undef		# Disable Ctrl-s from freezing terminal

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Load aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# Auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files

# vi mode instead of default emacs mode
bindkey -v
export KEYTIMEOUT=1

# Change cursort shape for different vi modes
function zle-keymap-select () {
	case $KEYMAP in
		vicmd) echo -ne '\e[1 q';;	# block
		viins|main) echo -ne '\e[5 q';;	# bar
	esac
}
zle -N zle-keymap-select
zle-line-init () {
	zle -K viins	# Initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
	echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q'		 # Use bar cursor on start
preexec() { echo -ne '\e[5 q' ;} # Use bar cursor for each new prompt

# key bindings
bindkey -v '^?' backward-delete-char	# Enable backspace in vi mode
bindkey -v '^[[P' delete-char		# Enable delete in vi mode
bindkey '^[[P' delete-char		# Enable delete
bindkey -a -r ':'			# Disable execute-named-cmd

# Edit line in vim with ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
