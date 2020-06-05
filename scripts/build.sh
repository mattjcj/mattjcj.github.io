#!/bin/bash
set -e

# create directory if it doesn't exist
mkdir -p dist/

# clean our dist folder
rm -r dist/* && echo "Folder dist cleaned" || echo "Nothing clean in dist"
echo ""

echo "Copying files except assets"

# copy files except assets
rsync -avr --exclude='assets/' src/* dist
echo ""

echo "Copying assets"

# copy assets
rsync -avr --exclude='scss/' --exclude='js/' src/assets dist
echo ""

echo "Compiling CSS files"

# build our css files
node-sass --output dist/assets/css src/assets/scss
