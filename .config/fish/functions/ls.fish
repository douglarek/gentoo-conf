# https://github.com/fish-shell/fish-shell/issues/6588
function ls --description 'List contents of directory'
    set -l opt -G --color=auto
    command ls $opt $argv
end
