#Load neofetch at startup
neofetch

#Loading the colors

autoload -U colors && colors 

autoload -U promptinit && promptinit

#Custom Zsh Prompt
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


#Menu -> Auto Completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

#History
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="$HOME/.local/share/zsh_history"

#vim keybindings
bindkey -v
export KEYTIMEOUT=1

#Alias 
alias ls='exa --long --header' #cargo install exa
alias cat='bat' #cargo install bat
alias nf='neofetch'

source ~/.bash_profile

#Syntax Highlighting
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
