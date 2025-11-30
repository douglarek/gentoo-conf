# Completion for qmerge (portage-utils)
# Fetch and merge binary packages

# Common options
complete -c qmerge -l root -d 'Set the ROOT env var' -r -F
complete -c qmerge -s v -l verbose -d 'Make a lot of noise'
complete -c qmerge -s q -l quiet -d 'Tighter output; suppress warnings'
complete -c qmerge -s C -l nocolor -d 'Do not output color'
complete -c qmerge -s h -l help -d 'Print this help and exit'
complete -c qmerge -s V -l version -d 'Print version and exit'

# qmerge specific options
complete -c qmerge -s f -l fetch -d 'Fetch package and newest Packages metadata'
complete -c qmerge -s F -l force -d 'Fetch package (skipping Packages)'
complete -c qmerge -s s -l search -d 'Search available packages'
complete -c qmerge -s K -l install -d 'Install package'
complete -c qmerge -s U -l unmerge -d 'Uninstall package'
complete -c qmerge -s p -l pretend -d 'Pretend only'
complete -c qmerge -s u -l update -d 'Update only'
complete -c qmerge -s y -l yes -d "Don't prompt before overwriting"
complete -c qmerge -s O -l nodeps -d "Don't merge dependencies"
complete -c qmerge -l debug -d 'Run shell funcs with set -x'

# Package name completion
complete -c qmerge -f -a '(__gentoo_packages_available)'
