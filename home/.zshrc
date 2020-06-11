#show colors
autoload -U colors && colors
PS1="%B%{$fg[green]%}[%{$fg[blue]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[green]%}%~%{$fg[green]%}]%{$reset_color%}$%b "
. $HOME/.local/share/lscolors.sh

zstyle ':completion:*' menu select

#History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

#Keyboard controls
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

#add directories to path
export PATH=$HOME/.scripts:$PATH
export PATH=$HOME/.games/shortcuts:$PATH

#colors for lightline (vim)plugin
export TERM=xterm-256color

#load alias file
. $HOME/.zsh_alias

#Plugins

	#THIS PLUGIN MUST BE AT THE BOTTOM
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
