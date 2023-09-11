#!/bin/bash

# Clone all github repos
go install github.com/tomnomnom/getgithubrepos@latest
CLONE_DIR="$HOME/src/github.com/tomnomnom"
mkdir -p $CLONE_DIR
cd $CLONE_DIR
getgithubrepos tomnomnom | xargs -n1 -P4 git clone 
