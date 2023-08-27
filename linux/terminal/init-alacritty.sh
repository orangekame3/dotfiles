#!/bin/bash

# 必要な依存関係をインストール
sudo apt-get update
sudo apt-get install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3

# 一時的なディレクトリを作成して移動
temp_dir=$(mktemp -d)
cd $temp_dir

# Rustをインストール（すでにインストールされている場合はスキップ可）
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env

# Alacrittyのリポジトリをクローン
git clone https://github.com/alacritty/alacritty.git
cd alacritty

# ビルドとインストール
cargo build --release
sudo cp target/release/alacritty /usr/local/bin # もしくは別のbinディレクトリへ

# デスクトップエントリを追加（オプション）
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

# 一時的なディレクトリを削除
cd $temp_dir
cd ..
rm -rf $temp_dir
ln -sf ~/dotfiles/linux/terminal/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
# 終了
echo "Alacrittyがインストールされました。"