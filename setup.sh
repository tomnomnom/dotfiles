#!/bin/bash
if [ ! -e ~/.vim ]; then ln -s ~/etc/vim ~/.vim; fi;
if [ ! -e ~/.vimrc ]; then ln -s ~/etc/vimrc ~/.vimrc; fi;
if [ ! -e ~/.ackrc ]; then ln -s ~/etc/ackrc ~/.ackrc; fi;
if [ ! -e ~/.bashrc ]; then ln -s ~/etc/bashrc ~/.bashrc; fi;
if [ ! -e ~/.gitconfig ]; then ln -s ~/etc/gitconfig ~/.gitconfig; fi;

