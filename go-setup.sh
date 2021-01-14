#!/bin/bash

# Dirty dirty dirty
VERSION="1.15.6"

source .bashrc
wget https://storage.googleapis.com/golang/go$VERSION.linux-amd64.tar.gz
tar xvfz go$VERSION.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo mv go /usr/local/

go get golang.org/x/tools/cmd/goimports
go get github.com/nsf/gocode

rm go$VERSION.linux-amd64.tar.gz
