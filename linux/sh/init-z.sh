#!/bin/bash
# ディレクトリが存在しない場合は作成
mkdir -p ~/z

# ファイルをコピー
cp dotfiles/linux/z/z.sh ~/z/z.sh

# シンボリックリンクを作成（既存のリンクやファイルがある場合は上書き）
ln -sf ~/z/z.sh ~/dotfiles/linux/z/z.sh