#!/bin/bash
cp /Users/alejandro/.vimrc .
cp /Users/alejandro/.gvimrc .
cp /Users/alejandro/.pentadactylrc .
cp /Users/alejandro/.gitconfig .
cp /Users/alejandro/.gitignore .

mkdir -p .ssh
cp /Users/alejandro/.ssh/id_dsa.pub .ssh

mkdir -p .config/fish/
cp /Users/alejandro/.config/fish/config.fish .config/fish/

mkdir -p .vim
cp -r /Users/alejandro/.vim/autoload .vim/
cp -r /Users/alejandro/.vim/bundle .vim/
cp -r /Users/alejandro/.vim/colors .vim/
cp -r /Users/alejandro/.vim/compiler .vim/
cp -r /Users/alejandro/.vim/doc .vim/
cp -r /Users/alejandro/.vim/ftplugin .vim/
cp -r /Users/alejandro/.vim/plugin .vim/
cp -r /Users/alejandro/.vim/syntax .vim/

mkdir -p usr/local/bin
cp /usr/local/bin/mvim usr/local/bin
