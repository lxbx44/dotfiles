# 
#
# ____                             _        _____      _     
# |  _ \   ___    __ _   ___  _ __ ( ) ___  |__  / ___ | |__  
# | |_) | / _ \  / _` | / _ \| '__||/ / __|   / / / __|| '_ \ 
# |  _ < | (_) || (_| ||  __/| |      \__ \  / /_ \__ \| | | |
# |_| \_\ \___/  \__, | \___||_|      |___/ /____||___/|_| |_|
#               |___/                                        
#
#
# Made by Roger :3
#



#  _____  _                            
# |_   _|| |__    ___  _ __ ___    ___ 
#   | |  | '_ \  / _ \| '_ ` _ \  / _ \
#   | |  | | | ||  __/| | | | | ||  __/
#   |_|  |_| |_| \___||_| |_| |_| \___|
#


export SUDO_PROMPT='[] Enter Password: '


export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="awesomepanda"

alias ssh="kitty +kitten ssh"
alias server="ssh xiuladors@192.168.4.25"


#  ____   _                 _     _                _   
# / ___| | |_   __ _  _ __ | |_  | |_   ___ __  __| |_ 
# \___ \ | __| / _` || '__|| __| | __| / _ \\ \/ /| __|
#  ___) || |_ | (_| || |   | |_  | |_ |  __/ >  < | |_ 
# |____/  \__| \__,_||_|    \__|  \__| \___|/_/\_\ \__|
# 

echo "Welcome :3"


#  ____   _                _             
# |  _ \ | | _   _   __ _ (_) _ __   ___ 
# | |_) || || | | | / _` || || '_ \ / __|
# |  __/ | || |_| || (_| || || | | |\__ \
# |_|    |_| \__,_| \__, ||_||_| |_||___/
#                   |___/                
# 

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  sudo
  web-search
  copyfile
)

source $ZSH/oh-my-zsh.sh
export PATH=$PATH:~/.local/bin


alias hc="nvim ~/.config/hypr/hyprlandd.conf"



#     _     _  _             
#    / \   | |(_)  __ _  ___ 
#   / _ \  | || | / _` |/ __|
#  / ___ \ | || || (_| |\__ \
# /_/   \_\|_||_| \__,_||___/ 
#
#


# PROGRAM ALIAS 

alias vim="nvim"
alias vi="nvim"
alias cat="bat --theme=\"Catppuccin-mocha\""
alias bat="bat --theme=\"Catppuccin-mocha\""

alias cp="cp -r"
alias mkdir="mkdir -p"
alias rm="rm -r"
alias rmf="rm -rf"

alias ls='exa --icons --group-directories-first'
alias lsa='exa --icons -a --group-directories-first'
alias ll='exa --icons -lah --group-directories-first'

alias tree='exa --group-directories-first --icons -a --tree'

alias cd="z"

alias zrc="vim ~/.zshrc"
alias szrc="source ~/.zshrc"

alias pyp="copyfile ~/.templates/python.txt"
alias html="copyfile ~/.templates/html.html"


# BASIC

alias quit="exit"
alias q="exit"
alias :q="exit"
alias ipa="hostname -i"
alias i="sudo dnf install"
alias imgm="exiftool"
alias pdf="zathura"
alias clock="tty-clock -s -c -C 4"
alias rm-screenshots="rm ~/Pictures/Screenshots/*.png"
alias kimg="kitty +kitten icat"
alias apte="auto-py-to-exe"
alias txt="figlet"
alias webapp="webapp-manager"
alias disk="ncdu"
alias torrent="deluge"
alias pipr="pip install -r requirements.txt"
alias cargowin="cargo build --release --target x86_64-pc-windows-gnu"
alias prog="cd ~/Documents/CODING/"
alias updaterice="bash ~/Documents/CODING/dotfiles/update.sh"
alias st="speedtest-cli"


# GAMES / APPS

# List GAMES

alias games="python3 ~/GAMES/.main.py"

alias mc="java -jar ~/GAMES/Minecraft/TLauncher-2.879.jar"
alias osu="/home/aria/GAMES/osu.AppImage"
alias celeste="wine /home/aria/GAMES/celeste/Celeste/Celeste.exe"
alias gdash="cd /home/aria/GAMES/GEOMETRY\ DASH/ && wine GeometryDash.exe && cd -"
alias 3dash="wine /home/aria/GAMES/3dash/3Dash.exe"
alias mscore="/home/aria/GAMES/MuseScore.AppImage"
alias obsidian="/home/aria/GAMES/Obsidian-1.3.5.AppImage"



# GIT

alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gpull='git pull'




# Node configuration

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.cargo/bin:$PATH"

export PATH=$PATH:/home/aria/.spicetify
eval "$(zoxide init zsh)"
export PATH=$PATH:/home/lxbx/.spicetify
