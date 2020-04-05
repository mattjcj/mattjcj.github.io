#!/bin/bash
set -e

nodemon --watch src -e html,scss --exec "./build.sh && serve dist"