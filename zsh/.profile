export EDITOR=/opt/homebrew/bin/nvim
# export NOTMUCH_CONFIG=~/.config/notmuch/config
# export QT_QPA_PLATFORMTHEME="qt5ct"
# export QT_STYLE_OVERRIDE="kvantum"
# export QT_AUTO_SCREEN_SCALE_FACTOR=0
# export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export PATH=~/.npm-global/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/.own/taskw_gcal_sync:$PATH
# export PATH=~/.scripts/:$PATH
# export PATH=~/Projects/Task-Suite/:$PATH
# export PATH=~/.emacs.d/bin:$PATH
# export PATH=~/Processing:$PATH
export PATH=/opt/homebrew/bin:$PATH
# export LANG=en_DK.UTF-8
# export LC_ALL=en_DK.UTF-8
# export LANGUAGE=en_DK.UTF-8
# export FZF_DEFAULT_COMMAND="fd --type file --follow --color=always"
# export FZF_DEFAULT_OPTS="--ansi"
# export PS1='$(task +inbox +PENDING count) '$PS1
# MPD daemon start (if no other user instance exists)
# [ ! -s ~/.config/mpd/pid ] && mpd

# export PATH="$PATH:$HOME/.vim/plugged/vim-superman/bin"
source "$HOME/.cargo/env"
if [ -e /Users/puggi/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/puggi/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
