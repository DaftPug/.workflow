# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color
# export TERM="screen-256color"
# export TERM="xterm-256color"

export ZSH="/Users/puggi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="rkj-repos"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

source $ZSH/oh-my-zsh.sh

# User configuration

plugins=(
    git
    npm
    man
    colored-man-pages
    osx
    iterm2
    #vi-mode
)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

  # BULLETTRAIN_PROMPT_ORDER=(
  #   time
  #   status
  #   custom
  #   context
  #   dir
  #   screen
  #   perl
  #   ruby
  #   virtualenv
  #   nvm
  #   aws
  #   go
  #   rust
  #   elixir
  #   git
  #   hg
  #   cmd_exec_time
  # )

BULLETTRAIN_PROMPT_ORDER=(
  time
  dir
  screen
  git
  # context
)

lg()
{
    export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

    lazygit "$@"

    if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
            cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
            rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
    fi
}

alias workflow='/usr/bin/git --git-dir=$HOME/.workflow/ --work-tree=$HOME'
alias v='nvim' # quick opening files with vim
alias m='f -e mpv' # quick opening files with mplayer
alias o='a -e xdg-open' # quick opening files with xdg-open
alias vi='nvim'
alias vim='nvim'

alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir='mkdir -vp'

# Arduino-cli aliases
alias aclicoreupd='arduino-cli core update-index' # update the index of boards
alias aclicoresrch='arduino-cli core search' # search for available boards
alias aclicorelst='arduino-cli core list' # Verify installed boards
alias aclibrdlst='arduino-cli board list' # List connected boards
alias aclisearch='arduino-cli lib search' # Search through the libraries
alias acliinstall='arduino-cli lib install' # Install a given library

alias corona='curl https://corona-stats.online\?source\=2\&minimal\=true\&top\=25'
alias coronadk='curl https://corona-stats.online/dk\?source\=2\&minimal\=true'

alias mbsync="mbsync -c \"/home/puggi/.config/isync/mbsyncrc\""
alias imapfilter="imapfilter -c \"/home/puggi/.config/imapfilter/config.lua\""

# taskwarrior aliases
alias in='task add +inbox'
tickle () {
    deadline=$1
    shift
    in +tickle wait:$deadline $@
}
alias tick=tickle
## Linux
# alias twlx='task add project:Linux'
# alias twtwlx='task add project:Linux +tw'

# fzf yay
alias yy="yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S"

# then alias mux -> tmuxinator since that's a lot to type:
alias mux=tmuxinator
# open a given project in tmux
alias procedural="mux start procedural"
alias qr_ar="mux start qr_ar"
alias budgetty="mux start budgetty"
alias datacleaner="mux start datacleaner"
alias finances="mux start finances"

## ITU
alias twitu='task add project:ITU'
alias twex='task add project:ITU +exam'
alias twexdi='task add project:ITU +exam +DI'

## General
alias tl='task -schedule list'
alias tb='task burndown'

# raspberry pi aliases
alias pi-ssh='ssh dietpi@192.168.0.200'

# itu ssh aliases
alias itu_ssh="nvim sftp://itu_server//import/home1/mrma/public_html/"
alias itu_dl="rsync -avhe ssh itu_server:/import/home1/mrma/public_html/ ~/Projects/ITU\ Web/"
# alias itu_ul="rsync -avhe --filter=':- .gitignore' . ssh ~/Projects/ITU\ Web/ itu_server:/import/home1/mrma/public_html/"
alias itu_ul="rsync -avhe ssh ~/Projects/ITU\ Web/Procedural_Generation itu_server:/import/home1/mrma/public_html/Procedural_Generation"
alias itu_web="cd ~/Projects/ITU\ Web/"

# general SSH
#if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
#fi
#if [[ ! "$SSH_AUTH_SOCK" ]]; then
#    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
#fi

#eval `keychain --eval --agents ssh id_rsa`

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
source /Users/puggi/.profile
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

export LANG="en_DK.UTF-8"
export LC_ALL="en_DK.UTF-8"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Created by `pipx` on 2021-05-11 08:36:42
export PATH="$PATH:/Users/puggi/Library/Python/3.9/bin"

autoload -U bashcompinit
bashcompinit
eval "$(register-python-argcomplete pipx)"
