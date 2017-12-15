#! /bin/bash

cp ~/.bashrc ~/git/dots
cp ~/.gitalias ~/git/dots
cp ~/.config/i3/config ~/git/dots
cp ~/.config/nvim/init.vim ~/git/dots
cp ~/dotfiles.sh ~/git/dots
cp ~/.Xresources ~/git/dots

cd ~/git/dots

git add .
git commit -m "updated"
git push origin master
