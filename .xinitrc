if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

xrdb -load ~/.Xresources

# color profile
/usr/bin/xcalib -d :0 ~/.colors/icc/MyColorProfile.icc

# screen lock
xautolock -time 10 -locker "~/.config/awesome/locker.sh" &

# mpd
mpd

# keyboard layout
setxkbmap -layout ch

# keyboard remapping
if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

# wm
exec awesome
