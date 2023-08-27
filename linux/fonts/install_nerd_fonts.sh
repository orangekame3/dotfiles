#!/bin/bash

# Nerd FontsのGitHubリリースからDejaVuSansMonoのzipファイルをダウンロード
wget -O /tmp/DejaVuSansMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DejaVuSansMono.zip

# zipファイルを解凍
mkdir -p /tmp/DejaVuSansMono
unzip /tmp/DejaVuSansMono.zip -d /tmp/DejaVuSansMono/

# フォントを~/.local/share/fonts/にコピー（このディレクトリは通常はdotfilesには含まれません）
mkdir -p ~/.local/share/fonts/NerdFonts
cp /tmp/DejaVuSansMono/*.ttf ~/.local/share/fonts/NerdFonts/

# フォントのキャッシュを更新
fc-cache -f -v

# クリーンアップ
rm -rf /tmp/DejaVuSansMono
rm /tmp/DejaVuSansMono.zip

# 終了メッセージ
echo "Nerd Fonts (DejaVuSansMono) has been installed."