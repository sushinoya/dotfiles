## CONFIGURATION

# Path to oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# Syntax Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Auto Suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Bat theme used by fzf
export BAT_THEME="OneHalfDark"


## ON INIT

# Pyenv init
eval "$(pyenv init -)"

# Add thefuck for auto-correction
eval $(thefuck --alias)

# Enable Direnv
eval "$(direnv hook zsh)"


## ALIASES

# Kill the process using port
killport() { kill -9 $(lsof -t -i:"$1") }

# Activate and Deactivate environments
act() { source "$1"/bin/activate }
alias deact=deactivate

# Show hidden files on ls
alias ls="ls -a"

# Change local git project to use personal email
alias my_project="git config user.name \"Suyash Shekhar\"; git config user.email \"suyashshekhar@gmail.com\""

# Pyenv install (MacOS)
alias pyinstall="CFLAGS=-I/usr/include/openssl LDFLAGS=-L/usr/lib pyenv install -v"

# Open current directory with tmux + vim
tux() {
    tmux new-session \; \
    send-keys 'vim .' C-m \; \
    split-window -v -p 18\; \
    select-pane -t 0 \;
}