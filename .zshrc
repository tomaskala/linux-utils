# Modify the path variable.
export PATH="$HOME/.local/bin:$PATH"

# Path to the oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Name of the theme to load.
ZSH_THEME="agnoster"

# Use case-sensitive completion.
CASE_SENSITIVE="true"

# Command execution timestamp shown in the history.
HIST_STAMPS="mm/dd/yyyy"

# List plugins to user.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf
  last-working-dir
  pass
)

# Load oh-my-zsh.
source $ZSH/oh-my-zsh.sh

# Enable zsh completions.
autoload -Uz compinit
compinit

# Completion for kitty.
kitty + complete setup zsh | source /dev/stdin

# Remove hostname.
prompt_context() {}

# CTRL+Space to accept the current suggestion.
bindkey '^ ' autosuggest-accept

# Append conda to the path variable. If this stops working for some
# reason, try `/home/tomas/anaconda3/bin/conda init`.
export PATH="/home/tomas/anaconda3/bin:$PATH"
