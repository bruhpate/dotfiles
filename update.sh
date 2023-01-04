#bash
cp -r ~/.bashrc ~/dotfiles/bash/

#dunst
cp -r ~/.config/dunst/ ~/dotfiles/

#hyprland
cp -r ~/.config/hypr/ ~/dotfiles/

#kitty
cp -r ~/.config/kitty/ ~/dotfiles/

#neofetch
cp -r ~/.config/neofetch/ ~/dotfiles/

#swaylock
cp -r ~/.config/swaylock/ ~/dotfiles/

#wlogout
cp -r ~/.config/wlogout/ ~/dotfiles/

#wofi
cp -r ~/.config/wofi/ ~/dotfiles/ 

#waybar 
cp -r ~/.config/waybar/ ~/dotfiles/ 

#cava
cp -r ~/.config/cava ~/dotfiles/ 

#git push if i pass it a parameter
if [ $# -eq 1 ];then
  git add .
  git commit -m "$1"
  git push
fi

