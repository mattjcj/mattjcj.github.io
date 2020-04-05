#!/bin/bash
set -e

# create directory if it doesn't exist
mkdir -p build/dist/assets

# clean our dist folder
rm -r build/dist/*

# copy all our html files
rsync -avr --exclude='assets/' build/src/* build/dist

# create images directory if it doesn't exist
mkdir -p build/dist/assets/images

# copy image assets separately
rsync -avr build/src/assets/images build/dist/assets/images

# build our css files
sass build/src/assets/scss:build/dist/assets/css

# and finally copy our production files to root
cp -r build/dist/* .
