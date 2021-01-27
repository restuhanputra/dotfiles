# set PATH so it includes user's private ~/.local/bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export CM_LAUNCHER=rofi-clipmenu
export CM_DIR=/tmp
