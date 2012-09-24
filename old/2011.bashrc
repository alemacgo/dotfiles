# colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# custom prompt
export PS1="\[\e[1;32m\]\u@\h [\w]\n\[\e[1;31m\]⇒> \[\e[1;32m\]\[$(tput sgr0)\]"

# PATH
# bash
PATH="/usr/local/bin:/usr/local/Cellar/bash/4.2.10/bin:${PATH}:"

# git
PATH+="/usr/local/Cellar/git/1.7.7/bin/:"

# python 2.6
PATH+="/Library/Frameworks/Python.framework/Versions/2.6/bin:"

# mysql and X11
PATH+="/usr/local/mysql/bin:/usr/X11R6/bin:"

# GCL and JML
PATH+="/Users/Ale/computation/gcl/:/Users/Ale/computation/JML5.4/bin:"

# android tools
PATH+="/Users/Ale/source/android_sdk/tools"

export PATH

# various environments and options
export PYTHONIOENCODING="utf_8"
export GACELA_PATH="/Users/Ale/source/gcl"
export MITSCHEME_LIBRARY_PATH="/Users/Ale/source/mit-scheme"
export VIM="/usr/share/vim/vim72"

# aliases
alias grep="egrep --color=auto"

alias limboole="/Users/Ale/source/boole/limboole-0.2/limboole"

alias xspim="/Users/Ale/source/spim-7.4/xspim/xspim"

alias spim="/Users/Ale/source/spim-7.4/spim/spim"

alias ipython="/Library/Frameworks/Python.framework/Versions/2.6/bin/ipython"

alias vim="vim -p"

alias vimrc="vim /Users/Ale/.vimrc"

alias bashc="vim /Users/Ale/.bashrc"

alias :q="exit"

alias ..="cd .."

alias ls="ls -F"

alias ll="ls -l"

alias la="ls -a"

alias gvim="mvim"

alias v="vim -S vimsession"

alias gp="git push"

alias gl="git pull"

alias op="cat /usr/share/misc/operator"

alias units="more /usr/share/misc/units.lib"

alias o="open ."

alias tesis="cd /Users/Ale/research/blai/reductions"

alias spotify="cd /Users/Ale/spotify/"

alias web="cd /Users/Ale/Sites/reductions"
alias adb="/Users/Ale/source/android_sdk/platform-tools/adb"
alias speedtest="wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
alias initvm="source /Library/Frameworks/Python.framework/Versions/2.6/bin/virtualenvwrapper.sh"

CDPATH=:~:~/Desktop/

function gc () {
    git commit -a
}

function copy () {
    cat $1 | pbcopy
}

function drop () {
    cp $1 /Users/Ale/Dropbox
}

c () {
    echo "$@" | bc -l
}

alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias psql='/Library/PostgreSQL/8.4/bin/psql -U postgres'
alias golatex='cd /usr/local/gwTeX/texmf.texlive/tex'

if [ -f "/Users/Ale/source/stderred/lib/stderred.so" ]; then
      export DYLD_INSERT_LIBRARIES="/Users/Ale/source/stderred/lib/stderred.so";
      export DYLD_FORCE_FLAT_NAMESPACE=1;
fi

alias t='python ~/source/t/t.py --task-dir ~/Dropbox --list tasks'
