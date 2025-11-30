# Completion for qfile (portage-utils)
# List all pkgs owning files

# Common options
complete -c qfile -l root -d 'Set the ROOT env var' -r -F
complete -c qfile -s v -l verbose -d 'Make a lot of noise'
complete -c qfile -s q -l quiet -d 'Tighter output; suppress warnings'
complete -c qfile -s C -l nocolor -d 'Do not output color'
complete -c qfile -s h -l help -d 'Print this help and exit'
complete -c qfile -s V -l version -d 'Print version and exit'

# qfile specific options
complete -c qfile -s F -l format -d 'Print matched atom using given format string' -x
complete -c qfile -s S -l slots -d 'Display installed packages with slots'
complete -c qfile -s R -l root-prefix -d 'Assume arguments are already prefixed by $ROOT'
complete -c qfile -s d -l dir -d 'Also match directories for single component arguments'
complete -c qfile -s o -l orphans -d 'List orphan files'
complete -c qfile -s x -l exclude -d "Don't look in package (used with --orphans)" -x

# Package name completion
complete -c qfile -f -a '(__fish_gentoo_packages_installed)'
