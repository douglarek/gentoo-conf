# Completion for qpkg (portage-utils)
# Manipulate Portage binpkgs

# Common options
complete -c qpkg -l root -d 'Set the ROOT env var' -r -F
complete -c qpkg -s v -l verbose -d 'Make a lot of noise'
complete -c qpkg -s q -l quiet -d 'Tighter output; suppress warnings'
complete -c qpkg -s C -l nocolor -d 'Do not output color'
complete -c qpkg -s h -l help -d 'Print this help and exit'
complete -c qpkg -s V -l version -d 'Print version and exit'

# qpkg specific options
complete -c qpkg -s c -l clean -d 'Clean pkgdir of unused binary files'
complete -c qpkg -s E -l eclean -d 'Clean pkgdir of files not in tree anymore'
complete -c qpkg -s p -l pretend -d 'Pretend only'
complete -c qpkg -s P -l pkgdir -d 'Alternate package directory' -r -F

# Package name completion (with versions)
complete -c qpkg -f -a '(__gentoo_packages_installed_versions)'
