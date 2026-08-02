#!/bin/bash
echo "Welcome to Full Update Script"
echo "Please choose an option"
echo "[D]efault, [S]hut down, [I]gnore errors, [B]oth"
read -rp ": " output
if [ "$output" == "D" ] ; then
    yay -Syu --noconfirm --answerdiff None --answerclean None --disable-download-timeout && flatpak update -y && cd ~/.themes/Windows-7-Better && git pull && cd ..
elif [ "$output" == "S" ] ; then
    yay -Syu --noconfirm --answerdiff None --answerclean None --disable-download-timeout && flatpak update -y && cd ~/.themes/Windows-7-Better && git pull && shutdown now
elif [ "$output" == "I" ] ; then
    yay -Syu --noconfirm --answerdiff None --answerclean None --disable-download-timeout ; flatpak update -y ; cd ~/.themes/Windows-7-Better && git pull && cd ..
elif [ "$output" == "B" ] ; then
    yay -Syu --noconfirm --answerdiff None --answerclean None --disable-download-timeout ; flatpak update -y ; cd ~/.themes/Windows-7-Better && git pull ; shutdown now
else
    echo "Invalid option"
fi
echo "Full update completed"