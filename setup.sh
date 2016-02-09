#!/bin/sh

echo "copying git files..."
cp gitconfig ~/.gitconfig
cp gitignore_global ~/.gitignore_global

echo "copying nvim config..."
mkdir ~/.config/nvim
cp nvim/init.vim ~/.config/nvim/init.vim

echo "done."

