#!/bin/bash

# OS判別
OS="$(uname)"

# Aquaのインストール
if [ "$OS" == "Linux" ]; then
    curl -L https://github.com/suzuki-shunsuke/aqua/releases/latest/download/aqua_linux_amd64.tar.gz -o /tmp/aqua_linux_amd64.tar.gz
    tar xvf /tmp/aqua_linux_amd64.tar.gz -C /tmp
        # 既存のaquaが存在する場合は削除
    if [ -e /usr/local/bin/aqua ]; then
        sudo rm -rf /usr/local/bin/aqua
    fi

    sudo mv /tmp/aqua /usr/local/bin/
    
elif [ "$OS" == "Darwin" ]; then
    brew install suzuki-shunsuke/aqua/aqua
fi

# Aqua設定のシンボリックリンクを作成
mkdir -p ~/.config/aqua
ln -sf ~/dotfiles/linux/aqua/aqua.yaml ~/.config/aqua/aqua.yaml

# AquaでCLIツールをインストール
aqua i

# 完了メッセージ
echo "Installation complete. Restart your terminal."
