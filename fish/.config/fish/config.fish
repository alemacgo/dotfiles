if status --is-login
    set PATH /usr/local/bin
    set PATH $PATH /usr/local/sbin
    set PATH $PATH /usr/bin
    set PATH $PATH /usr/sbin
    set PATH $PATH /bin
    set PATH $PATH /sbin
    set PATH $PATH /usr/X11R6/bin
    set PATH $PATH /usr/texbin
    set PATH $PATH /usr/local/share/python
    #set PATH $PATH /usr/local/texlive/2012basic/bin/universal-darwin
    #set -x PYTHONPATH /usr/local/lib/python2.7/site-packages $PYTHONPATH
end

function gs; git status $argv; end
function gc; git commit -a $argv; end
function ga; git add $argv; end
function gb; git branch $argv; end
function gd; git diff $argv; end
function go; git checkout $argv; end
function gp; git push $argv; end
function grep; egrep --color $argv; end

function sha1; openssl sha1 $argv; end
