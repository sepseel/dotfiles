#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# xdg folder paths
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_DOCUMENTS_DIR="$HOME/documents"
export XDG_MUSIC_DIR="$HOME/music"
export XDG_PICTURES_DIR="$HOME/images"
export XDG_VIDEOS_DIR="$HOME/videos"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# expand the path
export PATH="$PATH:$HOME/.scripts:$HOME/.scripts/dmenu"

# set enviroment vars to fix xdg support
[[ -f "$XDG_CONFIG_HOME/xdg_cleanup" ]] && . "$XDG_CONFIG_HOME/xdg_cleanup"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
