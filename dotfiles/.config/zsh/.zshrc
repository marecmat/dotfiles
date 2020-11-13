CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_LS_COLORS="false"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"

ZSH_THEME="robbyrussell"
#"robbyrussell"
#"bira"
#"dst"
#"xiong-chiamiov"


plugins=(
    git 
    web-search
    sudo
    pip
)

$HOME/scripts/fet.sh
xrdb $HOME/.Xresources

source $ZSH/oh-my-zsh.sh
source $ZDOTDIR/aliases 
