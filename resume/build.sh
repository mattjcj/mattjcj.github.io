#!/bin/bash
set -e

mkdir -p dist/assets
cp src/*.html dist
sass --update src/assets/scss:dist/assets/css
