if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

xrdb -load ~/.Xresources

# color profile
/usr/bin/xcalib -d :0 /home/avarx/.color/icc/MyColorProfile.icc

# keyboard layout
setxkbmap ch

# wm
exec awesome