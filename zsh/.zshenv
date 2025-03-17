# XDG Base Directory Specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# ZSH specific
export HISTFILE="$XDG_STATE_HOME/zsh/history"
export _Z_DATA="$XDG_STATE_HOME/zsh/z.txt"
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/zcompdump"

# Starship Prompt
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship/cache"
