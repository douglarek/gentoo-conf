# Completion for eix-update (eix tools)
# Update the eix database

# Common options
complete -c eix-update -s h -l help -d 'Help'
complete -c eix-update -s v -l version -d 'Version'
complete -c eix-update -l print -r -d 'Print expanded variable value' -a '(eix --known-vars 2>/dev/null)'
complete -c eix-update -l dump -d 'Dump variables'
complete -c eix-update -l dump-defaults -d 'Dump default values of variables'
complete -c eix-update -s q -l quiet -d 'No output'
complete -c eix-update -s n -l nocolor -d 'Do not use colors in output'
complete -c eix-update -s F -l force-color -d 'Force color on non-terminal'
complete -c eix-update -s Q -l quick -d 'Do not try to read unguessable slots'
complete -c eix-update -l care -d 'Always read slots of installed packages'
complete -c eix-update -l deps-installed -d 'Always read deps of installed packages'
complete -c eix-update -l ansi -d 'Reset the ansi 256 color palette'

# eix-update specific options
complete -c eix-update -s H -l nostatus -d 'Do not update status line'
complete -c eix-update -l force-status -d 'Force status line on non-terminal'
complete -c eix-update -s o -l output -r -F -d 'Output to FILE'
complete -c eix-update -s x -l exclude-overlay -r -d 'Exclude overlay' -a '(__eix_get_overlays)'
complete -c eix-update -s a -l add-overlay -r -F -d 'Add overlay'
complete -c eix-update -s m -l override-method -r -d 'Override method for overlay mask' -a '(__eix_get_overlays)'
complete -c eix-update -s r -l repo-name -r -d 'Set REPO_NAME for OVERLAY' -a '(__eix_get_overlays)'
