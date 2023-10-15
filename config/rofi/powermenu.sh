#! /bin/sh

chosen=$(printf "Shut Down\nRestart\nLock" | rofi -dmenu -i -theme-str '@import "powermenu.rasi"')

case "$chosen" in
	"Shut Down") poweroff ;;
	"Restart") reboot ;;
	"Lock") ~/.config/lock.sh;;
	*) exit 1 ;;
esac
