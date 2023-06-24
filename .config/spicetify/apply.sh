#!/usr/bin/bash

for theme in $(ls ~/.config/spicetify/Themes); do
    echo $theme
done

echo "What theme do you want?"

read -p ">> " thCh

spicetify config current_theme $thCh

spicetify config color_scheme sky

for ext in $(ls ~/.config/spicetify/Extensions); do
    spicetify config extensions $ext
done

for custApp in $(ls ~/.config/spicetify/CustomApps); do
    spicetify config custom_apps $custApp
done

spicetify apply
