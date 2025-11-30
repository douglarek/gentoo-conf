# Completion for qkeyword (portage-utils)
# List packages based on keywords

# Common options
complete -c qkeyword -l root -d 'Set the ROOT env var' -r -F
complete -c qkeyword -s v -l verbose -d 'Make a lot of noise'
complete -c qkeyword -s q -l quiet -d 'Tighter output; suppress warnings'
complete -c qkeyword -s C -l nocolor -d 'Do not output color'
complete -c qkeyword -s h -l help -d 'Print this help and exit'
complete -c qkeyword -s V -l version -d 'Print version and exit'

# qkeyword specific options
complete -c qkeyword -s p -l matchpkg -d 'Match package name' -x
complete -c qkeyword -s c -l matchcat -d 'Match category name' -x
complete -c qkeyword -s m -l matchmaint -d 'Match maintainer email from metadata.xml' -x
complete -c qkeyword -s i -l imlate -d 'List packages that can be marked stable on a given arch'
complete -c qkeyword -s d -l dropped -d 'List packages that have dropped keywords on version bump'
complete -c qkeyword -s t -l testing -d 'List packages with ~arch but no stable versions'
complete -c qkeyword -s s -l stats -d 'Display statistics about the portage tree'
complete -c qkeyword -s a -l all -d 'List packages keyworded for given arch'
complete -c qkeyword -s n -l not -d "List packages that aren't keyworded on a given arch"

# Architecture completion
complete -c qkeyword -f -a '(__fish_gentoo_arches)'

# Category completion for -c option
complete -c qkeyword -n '__fish_seen_subcommand_from -c --matchcat' -f -a '(__fish_gentoo_packages_category)'
