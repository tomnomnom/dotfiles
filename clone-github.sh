#!/bin/bash

# Clone all github repos

CLONE_DIR="$HOME/src/github.com/tomnomnom"
cd $CLONE_DIR

go get github.com/tomnomnom/getgithubrepos
getgithubrepos tomnomnom | xargs -n1 git clone 
