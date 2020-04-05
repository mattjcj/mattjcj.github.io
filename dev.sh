#!/bin/bash
set -e

nodemon --watch build/src -e html,scss --exec "./build.sh && serve ."