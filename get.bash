#!/bin/bash
mkdir -p vim
cp /Users/alejandro/.vimrc vim/
cp /Users/alejandro/.gvimrc vim/
mkdir -p vim/.vim
cp -r /Users/alejandro/.vim/autoload vim/.vim/
cp -r /Users/alejandro/.vim/bundle vim/.vim/
cp -r /Users/alejandro/.vim/colors vim/.vim/
cp -r /Users/alejandro/.vim/compiler vim/.vim/
cp -r /Users/alejandro/.vim/doc vim/.vim/
cp -r /Users/alejandro/.vim/ftplugin vim/.vim/
cp -r /Users/alejandro/.vim/plugin vim/.vim/
cp -r /Users/alejandro/.vim/syntax vim/.vim/

mkdir -p firefox
cp /Users/alejandro/.pentadactylrc firefox/

mkdir -p git
cp /Users/alejandro/.gitconfig git/
cp /Users/alejandro/.gitignore git/

mkdir -p brew
brew list > brew/homebrew.list

mkdir -p ssh/.ssh
cp /Users/alejandro/.ssh/id_dsa.pub ssh/.ssh/

mkdir -p fish/.config/fish/
cp /Users/alejandro/.config/fish/config.fish fish/.config/fish/

mkdir -p usr/local/bin
cp /usr/local/bin/mvim usr/local/bin
cp /usr/local/bin/mvimdiff usr/local/bin

mkdir -p 'keyremap/Library/Application Support/KeyRemap4MacBook'
cp '/Users/alejandro/Library/Application Support/KeyRemap4MacBook/private.xml' 'keyremap/Library/Application Support/KeyRemap4MacBook'

mkdir -p 'quicksilver/Library/Application Support/Quicksilver'
cp '/Users/alejandro/Library/Application Support/Quicksilver/triggers.plist' 'quicksilver/Library/Application Support/Quicksilver'
