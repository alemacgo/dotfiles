if status --is-login
    set PATH $PATH /usr/local/texlive/2012basic/bin/universal-darwin/
    set PATH $PATH /usr/local/sbin/
end

function gs; git status $argv; end
function ga; git add $argv; end
function gb; git branch $argv; end
function gd; git diff $argv; end
function go; git checkout $argv; end
