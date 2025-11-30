# Completion for qlist (portage-utils)
# List installed packages

# Common options
complete -c qlist -l root -d 'Set the ROOT env var' -r -F
complete -c qlist -s v -l verbose -d 'Make a lot of noise'
complete -c qlist -s q -l quiet -d 'Tighter output; suppress warnings'
complete -c qlist -s C -l nocolor -d 'Do not output color'
complete -c qlist -s h -l help -d 'Print this help and exit'
complete -c qlist -s V -l version -d 'Print version and exit'

# qlist specific options
complete -c qlist -s I -l installed -d 'Just show installed packages'
complete -c qlist -s S -l slots -d 'Display installed packages with slots (use twice for subslots)'
complete -c qlist -s R -l repo -d 'Display installed packages with repository'
complete -c qlist -s U -l umap -d 'Display installed packages with flags used'
complete -c qlist -s c -l columns -d 'Display column view'
complete -c qlist -l show-debug -d 'Show /usr/lib/debug and /usr/src/debug files'
complete -c qlist -s e -l exact -d 'Exact match (only CAT/PN or PN without PV)'
complete -c qlist -s a -l all -d 'Show every installed package'
complete -c qlist -s d -l dir -d 'Only show directories'
complete -c qlist -s o -l obj -d 'Only show objects'
complete -c qlist -s s -l sym -d 'Only show symlinks'
complete -c qlist -s F -l format -d 'Print matched atom using given format string' -x

# Package name completion
complete -c qlist -f -a '(__fish_gentoo_packages_installed)'
