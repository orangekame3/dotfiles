#!/bin/bash

# OS判別
OS="$(uname)"

# シンボリックリンクの作成等の前処理
# ...

# zshのインストール
if [ "$OS" == "Linux" ]; then
    sudo apt update
    sudo apt install -y zsh
elif [ "$OS" == "Darwin" ]; then
    brew install zsh
fi

# デフォルトシェルをzshに設定
chsh -s $(which zsh)

# .zshrcなどのシンボリックリンクを作成
ln -sf ~/dotfiles/linux/zsh/.zshrc ~/.zshrc

# Git設定やその他のシンボリックリンク作成
# ...

# 完了メッセージ
echo "Installation complete. Restart your terminal."
reboot

