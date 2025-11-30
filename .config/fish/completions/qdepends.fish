# Completion for qdepends (portage-utils)
# Show dependency info

# Common options
complete -c qdepends -l root -d 'Set the ROOT env var' -r -F
complete -c qdepends -s v -l verbose -d 'Make a lot of noise'
complete -c qdepends -s q -l quiet -d 'Tighter output; suppress warnings'
complete -c qdepends -s C -l nocolor -d 'Do not output color'
complete -c qdepends -s h -l help -d 'Print this help and exit'
complete -c qdepends -s V -l version -d 'Print version and exit'

# qdepends specific options
complete -c qdepends -s d -l depend -d 'Show DEPEND info'
complete -c qdepends -s r -l rdepend -d 'Show RDEPEND info'
complete -c qdepends -s p -l pdepend -d 'Show PDEPEND info'
complete -c qdepends -s b -l bdepend -d 'Show BDEPEND info'
complete -c qdepends -s Q -l query -d 'Query reverse deps'
complete -c qdepends -s i -l installed -d 'Search installed packages using VDB'
complete -c qdepends -s t -l tree -d 'Search available ebuilds in the tree'
complete -c qdepends -s F -l format -d 'Print matched atom using given format string' -x
complete -c qdepends -s S -l pretty -d 'Pretty format specified depend strings'

# Package name completion
complete -c qdepends -f -a '(__gentoo_packages_installed)'
