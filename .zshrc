# Path to your oh-my-zsh installation.
export ZSH=$HOME/.omzsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

autoload -U compinit promptinit colors
compinit
promptinit
colors
PROMPT="
%{$fg[red]%} »  %{$reset_color%}"
RPROMPT="%B%{$fg[black]%}%~%{$reset_color%}"

export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh

# Aliases
if [ -f ~/.aliases ]; then
. ~/.aliases
fi

