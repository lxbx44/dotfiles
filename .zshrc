
#ZSH_THEME="awesomepanda"


export SUDO_PROMPT='[] Enter Password: '


plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  sudo
  copyfile
)


alias ssh="kitty +kitten ssh"
alias server="ssh server@fibla.es"

alias vim="nvim"
alias vi="nvim"

alias bat="bat --theme=\"Nord\""
alias cat="bat --theme=\"Nord\""

alias cp="cp -r"
alias mkdir="mkdir -pv"
alias rmr="rm -r"
alias rmf="rm -rf"


alias ls="~/.cargo/bin/exa --group-directories-first --icons"
alias lsa="~/.cargo/bin/exa -A --group-directories-first --icons"
alias ll="~/.cargo/bin/exa -lAh --group-directories-first --icons"
alias tree='exa --group-directories-first --icons -a --tree'

alias cd="z"

alias zrc="vim ~/.zshrc"
alias szrc="source ~/.zshrc"

alias pyp="copyfile ~/.templates/python.py"
alias html="copyfile ~/.templates/html.html"

alias quit="exit"
alias q="exit"
alias :q="exit"

alias ipa="hostname -i"

alias i="yay -S"

alias clock="tty-clock -s -c -C 4"
alias rm-screenshots="rm ~/Pictures/Screenshots/*.png"
alias kimg="kitty +kitten icat"
alias apte="auto-py-to-exe"
alias txt="figlet"
alias disk="ncdu"
alias pvenv="source venv/bin/activate"
alias cargowin="cargo build --release --target x86_64-pc-windows-gnu"
alias prog="cd ~/Documents/CODING/"
alias ext="tar xzf"

alias wine32="WINEPREFIX='/home/lxbx/.wine32'"

export PATH=$PATH:~/.local/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH="$HOME/.cargo/bin:$PATH"

export PATH=$PATH:/home/lxbx/.spicetify

[[ -f /home/lxbx/Documents/CODING/elecrton/hwe/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/lxbx/Documents/CODING/elecrton/hwe/node_modules/tabtab/.completions/electron-forge.zsh


export ZSH="/home/lxbx/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
