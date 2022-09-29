#!/usr/bin/env bash

declare -a resolutions=("32" "64" "128" "256" "512" "1024" "2048" "3092")

# Iterate the string array using for loop
for val in ${resolutions[@]}; do
   filename="logo_${val}x.png"
   echo "Exporting ${filename}"
   inkscape -z -w ${val} -h ${val} logo/logo.svg testdir/${filename}
done
