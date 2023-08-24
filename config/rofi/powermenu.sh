#! /bin/sh

chosen=$(printf "Shut Down\nRestart\nLock" | rofi -dmenu -i -theme-str '@import "powermenu.rasi"')

case "$chosen" in
	"Shut Down") poweroff ;;
	"Restart") reboot ;;
	"Lock") i3lock -i "Pictures/Wallpapers/i3lock.png";;
	*) exit 1 ;;
esac
