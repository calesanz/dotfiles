if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

xrdb -load ~/.Xresources

# screensaver
xscreensaver -nosplash &

# color profile
/usr/bin/xcalib -d :0 /home/avarx/.colors/icc/MyColorProfile.icc

# mpd
mpd

# keyboard layout
setxkbmap ch

# keyboard remapping
if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

# wm
exec awesome
