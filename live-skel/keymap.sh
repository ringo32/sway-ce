#!/bin/sh

echo "Would you like to modify the keyboard layout? (y/n)" #***needs to be fixed
read method2 < /dev/tty
localectl list-keymaps > /tmp/keymaps.txt
if [ "$method2" == "y" ] || [ "$method2" == "Y" ]; then

dialog1(){
    list=$(cat /tmp/keymaps.txt)
    keymap=$( dialog --title "list keyboard" --cancel-label "Exit" \
                     --no-items --menu "Please choose one keyboard: " \
                     --output-fd 1 10 40 0 ${list[@]///} )
    echo $keymap
sudo localectl set-keymap $keymap
}

fi

dialog1
