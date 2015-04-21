#!/bin/bash

# Dirty dirty dirty

source .bashrc
wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz
tar xvfz go1.4.2.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo mv go /usr/local/

go get golang.org/x/tools/cmd/goimports
go get github.com/nsf/gocode

rm go1.4.2.linux-amd64.tar.gz
