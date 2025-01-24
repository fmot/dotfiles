#!/bin/bash

# Neovimの設定ファイルとdein.tomlを適切な場所にシンボリックリンクを作成
echo "Setting up Neovim configuration..."

# .config/nvim が存在しない場合は作成
mkdir -p ~/.config/nvim

# init.vimのシンボリックリンクを作成
ln -sfn $(pwd)/.config/nvim/init.vim ~/.config/nvim/init.vim

# dein.tomlのシンボリックリンクを作成
ln -sfn $(pwd)/.config/nvim/dein.toml ~/.cache/dein/dein.toml

# dein.vimがインストールされていない場合、インストーラーを実行
if [ ! -d ~/.cache/dein ]; then
  echo "Installing dein.vim..."
  curl -L https://github.com/Shougo/dein.vim/raw/master/bin/installer.sh | sh -s ~/.cache/dein
fi

# dein.vimによるプラグインのインストール
echo "Installing plugins with dein.vim..."
nvim +'call dein#install()' +qall

echo "Neovim configuration setup complete!"

