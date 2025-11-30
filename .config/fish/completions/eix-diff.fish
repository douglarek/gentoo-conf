# Completion for eix-diff (eix tools)
# Show differences between two eix databases

# Common options
complete -c eix-diff -s h -l help -d 'Help'
complete -c eix-diff -s v -l version -d 'Version'
complete -c eix-diff -l print -r -d 'Print expanded variable value' -a '(eix --known-vars 2>/dev/null)'
complete -c eix-diff -l dump -d 'Dump variables'
complete -c eix-diff -l dump-defaults -d 'Dump default values of variables'
complete -c eix-diff -s q -l quiet -d 'No output'
complete -c eix-diff -s n -l nocolor -d 'Do not use colors in output'
complete -c eix-diff -s F -l force-color -d 'Force color on non-terminal'
complete -c eix-diff -s Q -l quick -d 'Do not try to read unguessable slots'
complete -c eix-diff -l care -d 'Always read slots of installed packages'
complete -c eix-diff -l deps-installed -d 'Always read deps of installed packages'
complete -c eix-diff -l ansi -d 'Reset the ansi 256 color palette'

# File completion for cache files
complete -c eix-diff -x -a '*.eix' -d 'Old cache file'
