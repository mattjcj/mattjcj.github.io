#!/bin/bash
set -e

# create directory if it doesn't exist
mkdir -p dist/

# clean our dist folder
rm -r dist/*

# copy all our html files
rsync -avr --exclude='assets/' src/* dist

# create images directory if it doesn't exist
mkdir -p dist/assets/images

# copy image assets separately
rsync -avr src/assets/images dist/assets/

# build our css files
sass src/assets/scss:dist/assets/css
