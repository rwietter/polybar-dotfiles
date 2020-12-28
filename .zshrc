powerline-daemon -q

. /usr/lib/python3.9/site-packages/powerline/bindings/zsh/powerline.zsh

setxkbmap -model abnt2 -layout br -variant abnt2

eval $(dircolors ~/.dir_colors)

export PATH=$PATH:$(yarn global bin)
export PATH=~/.npm-global/bin:$PATH
export JAVA_HOME='/usr/lib/jvm/java-8-openjdk'
export ANDROID_SDK_ROOT='/opt/android-sdk'
JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions'
# export PATH="$PATH:`pwd`/flutter/bin"

export els=els

# react-native
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:~/android-studio/bin

# ----------------------------------------------------------------------------##
# PLUGINS
# ----------------------------------------------------------------------------##

# pacman -S zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

test -r ~/ZSH/aliases && source ~/ZSH/aliases
test -r ~/ZSH/aliases-git && source ~/ZSH/aliases-git

source ~/ZSH/completion.zsh

#------------------------------------------------------------------------------
# History Configuration
# -----------------------------------------------------------------------------
HISTSIZE=1000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=1000               #Number of history entries to save to disk
HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed


# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# You may need to manually set your language environment
export LANG=pt_BR.UTF-8

# ----------------------------------------------------------------------------##
# SYNTAX-HIGHLIGHTING
# ----------------------------------------------------------------------------##
setopt nohashdirs
setopt completealiases
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY


# Historic options:
setopt EXTENDED_HISTORY
setopt HIST_VERIFY
setopt HIST_REDUCE_BLANKS

setopt HIST_IGNORE_ALL_DUPS

setopt autopushd pushdsilent pushdtohome

setopt prompt_subst

## Remove duplicate entries
setopt pushdignoredups

##Autocomplete for aliases
setopt completealiases

## This reverts the +/- operators.
setopt pushdminus

# Loading some useful modules:
zmodload -i zsh/complete
zmodload -i zsh/mapfile
zmodload -i zsh/mathfunc
zmodload -i zsh/complist
zmodload -i zsh/curses
zmodload -i zsh/datetime
zmodload -i zsh/terminfo

# Loading module zmv
autoload -U zmv

# Enabling self-correction:
setopt correct
setopt correct_all

# Allows the use of wildcards: *?_-.[]~=/&;!#$%^(){}<>
setopt extended_glob

# Allowing self cd (There is no need to use the command cd):
setopt auto_cd
setopt cdable_vars
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_silent

# Auto-complete with <TAB>
setopt auto_list
setopt auto_menu
setopt case_glob
setopt list_types
setopt glob_complete
setopt menu_complete
setopt complete_in_word
setopt complete_aliases
autoload -Uz compinit promptinit vcs_info
compinit
promptinit
autoload -U colors && colors

# Misc
setopt ZLE
declare -U path

 # Enabling verbose mode:
zstyle ':completion:*' verbose 'yes'
zstyle ':completion:*' show-completer

# Persistent repetition:
zstyle ':completion:*' rehash true

 # Colored stripe complementation:
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors 'reply=( "=(#b)(*$VAR)(?)*=00=$color[green]=$color[bg-green]" )'
zstyle ':completion:*:*:*:*:hosts' list-colors '=*=30;41'
zstyle ':completion:*:*:*:*:users' list-colors '=*=$color[green]=$color[red]'
zstyle ':completion:*' menu select

 # Visual selection menu:
zstyle ':completion:*' menu select=3 _complete _i-patterns ignored_approximate
zstyle ':completion:*' select-prompt '%S zsh: Seleção atual = %p %s'

# Auto description of possible additions:
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'

# Format of self-completion messages:
zstyle ':completion:*:corrections' format '%Bzsh: %d (erros: %e)%b'
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%Bzsh: Inválido como: %d%b'

# Listing self-complementation groups:
zstyle ':completion:*:matches' groups 'yes'
zstyle ':completion:*' list-grouped
zstyle ':completion:*' group-name ''
zstyle ':completion:*:*:-command-:*' group-order commands builtins

# Expand as much as possible:
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:*' completer _complete _correct _match _approximate
zstyle ':completion:*:expand:*' tag-order all-expansions

# Number of errors to accept for autocompletion:
zstyle ':completion:*:approximate:*' max-errors 2 numeric

# Use '/d/s <TAB>' to expand to '/dir/subdir':
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-slashes 'yes'

# Preserve prefix/suffix for autocompletion:
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' completer _complete _prefix _match _approximate
zstyle ':completion:*' preserve-prefix '//[^ /]##/'
zstyle ':completion:*:match:*' original only
zstyle ':completion:*approximate :*' max-errors 1 numeric

# Option auto-cd should ignore the current directory:
zstyle ':completion:*:cd:*' ignore-parents parent pwd

# Avoid duplicate entries for the commands below:
zstyle ':completion:*:rm:*' ignore-line 'yes'
zstyle ':completion:*:cp:*' ignore-line 'yes'
zstyle ':completion:*:mv:*' ignore-line 'yes'

# Case-sensitive self-complementation:
zstyle ':completion:*:complete:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# Self-complementary from Wildcards:
zstyle ':completion:*:complete-extended:*' matcher 'r:|[.,_-]=* r:|=*'

# Ignore auto-completion of internal functions of zsh:
zstyle ':completion:*:functions' ignored-patterns '_*'

# Autocomplete for the command 'kill':
zstyle ':completion:*:processes' command 'ps x -o pid,command'
zstyle ':completion:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

# Command help in the Zsh
autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk

# Zpty Module
zmodload zsh/zpty

unsetopt nomatch

# Disable percent sign
setopt PROMPT_CR
setopt PROMPT_SP

# Stop on '/' character when deleting words using ^H.
autoload -U select-word-style
select-word-style bash

# Automatically quote meta-characters like question marks, quotes and ampersands during typing or pasting.
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## -------------------------------------------------------------------------------------- ##

# Bindkeys
bindkey -v

#Cleaning terminal screen with key <ESC>:
bindkey '^[' clear-screen

# Kill input from the current point to the end of line with Ctrl-k
bindkey '^k' kill-line

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

#[[ -n "$key[Up]"   ]] && bindkey — "$key[Up]"   up-line-or-beginning-search
#[[ -n "$key[Down]" ]] && bindkey — "$key[Down]" down-line-or-beginning-search

typeset -A key

key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}

[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n "${key[Up]}"      ]]  && bindkey  "${key[Up]}"      up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey "${key[Down]}"         down-line-or-beginning-search
[[ -n "${key[Left]}"    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n "${key[Right]}" ]] && bindkey "${key[Right]}" forward-char

#--------------------------------------------------------------------#
# Global Configuration Variables                                     #
#--------------------------------------------------------------------#

# Color to use when highlighting suggestion
# Uses format of `region_highlight`
# More info: http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Widgets
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# Prefix to use when saving original versions of bound widgets
ZSH_AUTOSUGGEST_ORIGINAL_WIDGET_PREFIX=autosuggest-orig-

# Widgets that clear the suggestion
ZSH_AUTOSUGGEST_CLEAR_WIDGETS=(
	history-search-forward
	history-search-backward
	history-beginning-search-forward
	history-beginning-search-backward
	history-substring-search-up
	history-substring-search-down
	up-line-or-history
	down-line-or-history
	accept-line
)

# Widgets that accept the entire suggestion
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=(
	forward-char
	end-of-line
	vi-forward-char
	vi-end-of-line
	vi-add-eol
)

# Widgets that accept the entire suggestion and execute it
ZSH_AUTOSUGGEST_EXECUTE_WIDGETS=(
)

# Widgets that accept the suggestion as far as the cursor moves
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS=(
	forward-word
	vi-forward-word
	vi-forward-word-end
	vi-forward-blank-word
	vi-forward-blank-word-end
)

# Widgets that should be ignored (globbing supported but must be escaped)
ZSH_AUTOSUGGEST_IGNORE_WIDGETS=(
	orig-\*
	beep
	run-help
	set-local-history
	which-command
	yank
)

# Max size of buffer to trigger autosuggestion. Leave undefined for no upper bound.
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=

# Pty name for calculating autosuggestions asynchronously
ZSH_AUTOSUGGEST_ASYNC_PTY_NAME=zsh_autosuggest_pty

#  Is a global variable that defines how the query should be highlighted inside a matching command
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg=default,fg=default,bold'

# Is a global variable that defines how the query should be highlighted when no commands in the history match it.
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='bg=default,fg=white,bold'

# Is a global variable that defines how the command history will be searched for your query. Its default value causes this script to perform a case-insensitive search
HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS='i'

# To define styles for nested brackets up to level 4
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=magenta,bold'

#ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=blue,bold'

# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES

# To differentiate aliases from other command types
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta'

ZSH_HIGHLIGHT_STYLES[function]='fg=yellow'

ZSH_HIGHLIGHT_STYLES[builtin]='fg=green'

ZSH_HIGHLIGHT_STYLES[command]='fg=red'

ZSH_HIGHLIGHT_STYLES[precommand]='fg=blue'

ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=127'

ZSH_HIGHLIGHT_STYLES[redirection]='fg=167'

ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=253'

ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=cyan'

ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=208'

ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=135'

ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=123'

ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=105'

ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=14'

ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=7'

ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=30'

ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=15'

ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=220'

# To have paths colored instead of underlined
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'

ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=208'

ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=161'

ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=154'

# To enable highlighting of globbing expressions
ZSH_HIGHLIGHT_STYLES[globbing]='yellow'

# To enable cursor highlighting
ZSH_HIGHLIGHT_STYLES[cursor]='bg=cyan'

#The style for the whole line
ZSH_HIGHLIGHT_STYLES[line]='bold'
TERM=xterm-256color

###-tns-completion-start-###
if [ -f /home/rwietter/.tnsrc ]; then 
    source /home/rwietter/.tnsrc 
fi
###-tns-completion-end-###
