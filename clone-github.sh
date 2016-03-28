#!/bin/bash

# Clone all github repos
go get github.com/tomnomnom/getgithubrepos
CLONE_DIR="$HOME/src/github.com/tomnomnom"
cd $CLONE_DIR
getgithubrepos tomnomnom | xargs -n1 git clone 
