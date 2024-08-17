#!/bin/bash

# images directory
rep="/home/sanjay/wallpapers"

# Create image list from directory
liste=("${rep}/"*)

# Compute the number of images
nbre=${#liste[@]}

# Random select
selection=$((${RANDOM} % ${nbre}))

image=${liste[${selection}]}

# Image loading
gsettings set org.gnome.desktop.background picture-uri-dark file://$image
wal -i $image
wal -c

