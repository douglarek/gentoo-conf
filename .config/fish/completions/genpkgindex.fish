# Completion for genpkgindex (generate binary package metadata index)

complete -c genpkgindex -s h -l help -d 'Display help and exit'
complete -c genpkgindex -s q -l quiet -d 'Be quiet'
complete -c genpkgindex -s v -l verbose -d 'Be verbose'
complete -c genpkgindex -s c -l compress -d 'Compress generated metadata with bzip2'
complete -c genpkgindex -s P -l pkgdir -d 'Set base location of binary packages (default $PKGDIR)' -r -F
