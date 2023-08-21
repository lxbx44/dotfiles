#!/bin/bash

swww init 

sleep 1

img_folder="$HOME/.config/hypr/wallpapers"

image_files=("$img_folder"/*.*)

random_image="${image_files[RANDOM % ${#image_files[@]}]}"

swww img --transition-step 30 --transition-fps 60 "$random_image"

