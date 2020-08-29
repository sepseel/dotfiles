#  _               _             _ _                     
# | |__   __ _ ___| |__     __ _| (_) __ _ ___  ___  ___ 
# | '_ \ / _` / __| '_ \   / _` | | |/ _` / __|/ _ \/ __|
# | |_) | (_| \__ \ | | | | (_| | | | (_| \__ \  __/\__ \
# |_.__/ \__,_|___/_| |_|  \__,_|_|_|\__,_|___/\___||___/
#                                                        


# alias for getting the cpu temp
alias temp='cat /sys/class/thermal/thermal_zone0/temp'

# alias for reloading .bashrc
alias reload='source ~/.bashrc'

# alias for the backlight script
alias backlight='./.config/Scripts/backlight.sh'

# more ls aliases
alias ll='ls -alF'
alias la='ls -A'
#alias ls='ls -h'

# open an imagevieuwer
alias image='sxiv-rifle ./'

# start python cgi http server
alias Phttp='python3 -m http.server --cgi'

# ps2 emu
alias ps2='PCSX2'

# alias for the dotfiles repo
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# alias for wifi info
alias wifi='nmcli -f in-use,ssid,bars dev wifi'

# alias for alsa eq
alias alsaequal='alsamixer -D equal'

# alias for color picker
alias pick='com.github.ronnydo.colorpicker'

# alias for starting a notebook server
alias pynote='cd ~/Documents/Python/Notebooks/ && jupyter notebook'

# low power mode
alias powersaver='killall compton polybar dunst'

# alias for cloudArch MAC
alias cloudMAC='00:1e:67:03:ac:4b'

# boot cloudArch
alias cloudWol='wol 00:1e:67:03:ac:4b'

# alias for nvim
alias vim='nvim'

#
# XDG CLEANUP
#
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
