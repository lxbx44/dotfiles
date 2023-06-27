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



export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="awesomepanda"

alias ssh="kitty +kitten ssh"


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
alias ls="lsd"
alias zrc="vim ~/.zshrc"
alias szrc="source ~/.zshrc"
alias pyp="copyfile ~/Documents/CODING/python/path.txt"


# BASIC

alias quit="exit"
alias q="exit"
alias i="yay -S"
alias imgm="exiftool"
alias pdf="zathura"
alias clock="tty-clock -s -c -C 4 && cd"
alias rm-screenshots="rm ~/Pictures/Screenshots/*.png"
alias kimg="kitty +kitten icat"
alias apte="auto-py-to-exe"
alias txt="figlet"
alias webapp="webapp-manager"
alias disk="ncdu"
alias torrent="deluge"
alias pipr="pip install -r requirements.txt"
alias cargowin="cargo build --release --target x86_64-pc-windows-gnu"
alias lsa="lsd -A"
alias prog="cd ~/Documents/CODING/"


# GAMES / APPS

# List GAMES

alias games="python3 ~/GAMES/.main.py"

alias mc="cd ~/GAMES/Minecraft && java -jar TLauncher-2.879.jar && cd"
alias osu="cd ~/GAMES && ./osu.AppImage && cd"
alias celeste="cd ~/GAMES/celeste/Celeste/ && wine Celeste.exe && cd"
alias gdash="cd ~/GAMES/GEOMETRY\ DASH && wine GeometryDash.exe && cd"
alias 3dash="cd ~/GAMES/3dash/ && wine 3Dash.exe && cd"
alias mscore="cd ~/GAMES && ./MuseScore.AppImage && cd"
alias obsidian="cd ~/GAMES/ && ./Obsidian-1.3.5.AppImage && cd"
alias chess="cd ~/GAMES/gambit && go run ./... && cd"







# Node configuration

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.cargo/bin:$PATH"

export PATH=$PATH:/home/aria/.spicetify
