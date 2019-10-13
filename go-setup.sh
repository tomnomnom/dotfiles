#!/bin/bash

LATEST=$(curl https://golang.org/VERSION\?m\=text)

source .bashrc
wget https://storage.googleapis.com/golang/$LATEST.linux-amd64.tar.gz
tar xvfz $LATEST.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo mv go /usr/local/

go get golang.org/x/tools/cmd/goimports
go get github.com/nsf/gocode

rm $LATEST.linux-amd64.tar.gz
