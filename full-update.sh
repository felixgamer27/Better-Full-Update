#!/bin/bash
echo "Welcome to Full Update Script 2.0"
echo "Please choose an option"
echo "[D]efault, [S]hut down, [I]gnore errors, [B]oth"
read -rp ": " output

if [ "$output" == "D" ] ; then
    sudo pacman -Syu --noconfirm && pacman="true" && yay -Syua --noconfirm --answerdiff None --answerclean None --disable-download-timeout && yay="true" && flatpak update -y && flatpak="true"
elif [ "$output" == "S" ] ; then
    sudo pacman -Syu --noconfirm && pacman="true" && yay -Syua --noconfirm --answerdiff None --answerclean None --disable-download-timeout && yay="true" && flatpak update -y && flatpak="true" && shutdown now
elif [ "$output" == "I" ] ; then
    sudo pacman -Syu && pacman="true"
    yay -Syua --noconfirm --answerdiff None --answerclean None --disable-download-timeout && yay="true"
    flatpak update -y && flatpak="true"
elif [ "$output" == "B" ] ; then
    sudo pacman -Syu && pacman="true"
    yay -Syua --noconfirm --answerdiff None --answerclean None --disable-download-timeout && yay="true"
    flatpak update -y && flatpak="true"
    shutdown now
else
    echo "Invalid option"
fi

echo "--------------------------"
echo "  Full update completed"
echo "--------------------------"
if [ "$pacman" == "true" ] ; then
    echo "Oficial repos (Pacman): 󰄬"
else
    echo "Oficial repos (Pacman): "
fi
if [ "$yay" == "true" ] ; then
    echo "AUR (Yay):              󰄬"
else
    echo "AUR (Yay):              "
fi
if [ "$flatpak" == "true" ]; then
    echo "Flatpak:                󰄬"
else
    echo "Flatpak:                "
fi
