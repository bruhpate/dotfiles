#!/bin/bash

#Terminal
alacritty_yml="/home/pietro/.config/alacritty/alacritty.yml"
alacritty_dest="/home/pietro/dotfiles/alacritty/alacritty.yml"

#Backup
echo -n "alacritty.yml... "
if cp -r $alacritty_yml $alacritty_dest 2>log_file; then
    echo "Done"
else
    echo "\033[0;31mError\033[0m"
fi


#Bashrc
bashrc="/home/pietro/.bashrc"
bashrc_dest="/home/pietro/dotfiles/bash/.bashrc"

#Backup
echo -n ".bashrc... "
if cp -r $bashrc $bashrc_dest 2>log_file; then
    echo "Done"
else
    echo "\033[0;31mError\033[0m"
fi

#Dunst
dunstrc="/home/pietro/.config/dunst/dunstrc"
dunstrc_dest="/home/pietro/dotfiles/dunst/dunstrc"

#Backup
echo -n "dunstrc... "
if cp -r $dunstrc $dunstrc_dest 2>log_file; then
    echo "Done"
else
    echo "\033[0;31mError\033[0m"
fi

#Hyprland
hyprland_conf="/home/pietro/.config/hypr/hyprland.conf"
hyprland_conf_dest="/home/pietro/dotfiles/hyprland/hyprland.conf"
wallapaper_jpg="/home/pietro/.config/hypr/wallpaper.jpg"
wallapaper_jpg_dest="/home/pietro/dotfiles/hyprland/wallpaper.jpg"

#Backup
echo -n "hyprland.conf... "
if cp -r $hyprland_conf $hyprland_conf_dest 2>log_file; then
    echo "Done"
else
    echo "\033[0;31mError\033[0m"
fi

echo -n "wallpaper.jpg... "
if cp -r $wallapaper_jpg $wallapaper_jpg_dest 2>log_file; then
    echo "Done"
else
    echo "\033[0;31mError\033[0m"
fi

#Wofi
wofi_style_css="/home/pietro/.config/wofi/style.css"
wofi_style_css_dest="/home/pietro/dotfiles/wofi/style.css"

echo -n "wofi_style.css... "
if cp -r $wofi_style_css $wofi_style_css_dest 2>log_file; then
    echo "Done"
else
    echo "\033[0;31mError\033[0m"
fi


rm log_file








