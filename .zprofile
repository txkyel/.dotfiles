# Profile file. Environmental variables set here.
# Heavily inspired by Luke Smith's voidrice.
# https://github.com/LukeSmithxyz/voidrice

# Default programs
export EDITOR="vim"
export TERMINAL="st"

# XDG paths
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Fixing Paths
# export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"  # This line will break some DMs
export LESSHISTFILE="-"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

