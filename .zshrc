# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tmtvl/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
bindkey "^R" history-incremental-search-backward
bindkey "^K" history-beginning-search-backward
bindkey "^J" history-beginning-search-forward

zstyle ':completion:*' menu select
setopt complete_aliases
setopt hist_ignore_dups

autoload -Uz colors promptinit
colors
promptinit
prompt redhat

setopt prompt_subst

local parens="$fg_bold[yellow]"
local punct="$fg_bold[black]"
local text="$fg_no_bold[yellow]"

autoload -Uz vcs_info
zstyle ':vcs_info:*' formats "%{$punct%}-%{$parens%}(%{$text%}%r%{$punct%}:%{$text%}%b%u%c%{$parens%})"
zstyle ':vcs_info:*' action-formats "%{$punct%}-%{$parens%}(%{$text%}%r%{$punct%}:%{$text%}%b%u%c%{$punct%}:%{$text%}%a%{$parens%})"
zstyle ':vcs_info:*' stagedstr "%{$punct%}:%{$text%}S"
zstyle ':vcs_info:*' unstagedstr "%{$punct%}:%{$text%}U"
zstyle ':vcs_info:*' check-for-changes yes

precmd () {
    vcs_info
}

PROMPT='%{$parens%}(%{$text%}%n%{$punct%}@%{$text%}%m%{$parens%})%{$punct%}-\
%{$parens%}(%{$text%}%!%{$punct%}/%{$text%}%y%{$parens%})%{$punct%}-\
%{$parens%}(%{$text%}%D{%H:%M}%{$punct%}:%{$text%}%D{%Y-%m-%d}%{$parens%})\
${vcs_info_msg_0_}%{$punct%}-%{$reset_color%}
%{$parens%}(%{$text%}%#%{$punct%}:%{$text%}%?%{$punct%}:%{$text%}%2~%{$parens%})%{$punct%}:%{$reset_color%} '

# Exports
export EDITOR="vim"
export GIT_EDITOR="vim"
export SUDO_EDITOR="vim"
export VISUAL="vim"

# Programming setup
export PATH="$HOME/.plenv/bin:$HOME/.cargo/bin:$HOME/.rbenv/bin:$HOME/bin:$HOME/.local/bin:$HOME/scripts:$PATH"
eval "$(plenv init - zsh)"
eval "$(~/.rakudobrew/bin/rakudobrew init -)"
eval "$(rbenv init -)"

echo "$fg_no_bold[green]Hello, $USER$reset_color"
