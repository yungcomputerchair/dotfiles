# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gsemaj/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# History search stuff
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search
# End history search stuff

export PATH=$PATH:$HOME/.local/bin
alias ls='ls --color=auto'
alias ll='ls -alh'
alias grep='grep --color=auto'

# Oh My Posh setup
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  POSH_THEME="https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/catppuccin_macchiato.omp.json" 
  eval "$(oh-my-posh init zsh --config $POSH_THEME)"
fi
# End Oh My Posh setup

krabby random 1-5 --no-title --no-mega --no-gmax --no-regional
