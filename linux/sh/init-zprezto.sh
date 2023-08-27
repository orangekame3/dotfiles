#!/bin/bash

# Preztoのリポジトリをクローン
if [ ! -d "${ZDOTDIR:-$HOME}/.zprezto" ]; then
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

# .zpreztorcのシンボリックリンクを作成
ln -sf ~/dotfiles/linux/zsh/.zpreztorc ~/.zpreztorc

echo "Prezto has been installed and .zpreztorc has been linked."