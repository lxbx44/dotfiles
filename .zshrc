
export SUDO_PROMPT='[] Enter Password: '

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    sudo
    copyfile
)

ZSH_THEME="robbyrussell"

alias vim="nvim"
alias vi="nvim"

alias bat="bat --theme=gruvbox-dark"

alias cp="cp -r"
alias mkdir="mkdir -pv"
alias rmr="rm -r"
alias rmf="rm -rf"

alias ls="~/.cargo/bin/exa --group-directories-first --icons"
alias lsa="~/.cargo/bin/exa -A --group-directories-first --icons"
alias ll="~/.cargo/bin/exa -lAh --group-directories-first --icons"
alias tree='exa --group-directories-first --icons -a --tree'

alias cd="z"

alias ipa="hostname -i"

alias zrc="vim ~/.zshrc"
alias szrc="source ~/.zshrc"

alias quit="exit"
alias q="exit"
alias :q="exit"

alias clock="tty-clock -s -c -C 4"
alias disk="ncdu"
alias prog="cd ~/Documents/CODING/"
alias ext="tar xzf"


export PATH=$PATH:~/.local/bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export PATH="$HOME/.cargo/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

