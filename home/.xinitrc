# exec openbox-session
DEFAULTSESSION=openbox-session

exec thunar --daemon &
exec ck-launch-session dbus-launch &

## Start GNOME Keyring
#eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
#export SSH_AUTH_SOCK
#dbus-update-activation-environment --systemd DISPLAY
eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
export SSH_AUTH_SOCK

## Executed by startx (run your window manager from here)
xrdb -load ~/.Xresources
xset +fp /usr/local/share/fonts
xset fp rehash

if [ -d /etc/X11/xinit/xinitrc.d  ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f"  ] && . "$f"
  done
  unset f
fi

# Load .profile
[ -f ~/.profile ] && . ~/.profile

# Launch dbus-launch, this is important for some app
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
    eval `dbus-launch --sh-syntax --exit-with-session`
fi

#Clipmenu
exec /usr/bin/clipmenud &

case "$1" in
    openbox) exec openbox-session ;;
    xfce) exec xfce4-session ;;
    gnome3) exec gnome-session ;;
    kde) exec startkde ;;
    cinnamon) exec gnome-session-cinnamon ;;
    razor-qt) exec razor-session ;;
    lxde) exec lxsession ;;
    mate) exec mate-session ;;
    *) exec $DEFAULTSESSION ;;
esac

#See that you have the following installed.
#thunar-volman
#udisks
#gvfs
#polkit-gnome