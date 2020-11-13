export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
#export VSCODE_PORTABLE="$XDG_DATA_HOME/vscode"
# Don't move xauthority: will break things :'(
# export XAUTHORITY="$XDG_CONFIG_HOME/X11/Xauthority"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"

export EDITOR="nvim"
export VISUAL="nvim"
export TERM='st'
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH
export MYVIMRC=$HOME/.config/.vimrc

export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

export ERRFILE=$HOME/.config/xsession-errors

