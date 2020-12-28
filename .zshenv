##----------------------------------------------------------------------------##
## Set some defaults
##----------------------------------------------------------------------------##

export BROWSER=firefox
export EDITOR=vim
export MANPAGER=less
export TERM=st-256color
export GIT_EDITOR='/usr/bin/vim'
#export FILEBROWSER=thunar
export RTV_BROWSER=w3m
export RTV_EDITOR=vim
export RTV_URLVIEWER=urlscan
export BROWSERCLI=w3m
export WORKON_HOME=~/.virtualenvs
export COLORFGBG=0

##----------------------------------------------------------------------------##
## For uniform qt theme and icons
##----------------------------------------------------------------------------##

export QT_QPA_PLATFORMTHEME=qt5

##----------------------------------------------------------------------------##
## FZF
##----------------------------------------------------------------------------##

export FZF_DEFAULT_OPTS='
  --color fg:-1,bg:-1,hl:230,fg+:3,bg+:233,hl+:229
  --color info:150,prompt:110,spinner:150,pointer:167,marker:174
'
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview' --border" 


##----------------------------------------------------------------------------##
## Historic
##----------------------------------------------------------------------------##

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=5000
export SAVEHIST=$HISTSIZE


##----------------------------------------------------------------------------##
## Enabling self-correction
##----------------------------------------------------------------------------##

export sprompt="$(print '%{\e[37m%}zsh: Corrigir para %S%r%s ? (n|y|e): %{\e[0m%}')"

##----------------------------------------------------------------------------##
## Disable percent sign
##----------------------------------------------------------------------------##

export PROMPT_EOL_MARK=""

##----------------------------------------------------------------------------##
## Set PATH so it includes user's private bin if it exists
##----------------------------------------------------------------------------##

export PATH=$HOME/bin:$PATH

