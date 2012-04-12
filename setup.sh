#!/bin/bash
dotfilesDir=$(pwd)

function linkDotfile {
  if [ -e ~/${1} ]; then
    mv ~/${1}{,.bak}
  fi

  if [ -L ~/${1} ]; then
    unlink ~/${1}
  fi

  ln -s ${dotfilesDir}/${1} ~/${1}
}

linkDotfile .vim
linkDotfile .vimrc
linkDotfile .ackrc
linkDotfile .bashrc
linkDotfile .gitconfig
linkDotfile .tmux.conf

