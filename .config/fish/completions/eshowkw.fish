# Completion for eshowkw (show package keywords/arches)

complete -c eshowkw -s h -l help -d 'Display help and exit'
complete -c eshowkw -s v -l version -d 'Show package version and exit'
complete -c eshowkw -s a -l arch -d 'Display only specified arch(es)' -xa '(__gentoo_arches)'
complete -c eshowkw -s A -l align -d 'Specify alignment for descriptions (default: bottom)' -xa 'top bottom'
complete -c eshowkw -s T -l top-position -d 'Specify fields in top listing (default: archlist)' -xa 'archlist versionlist'
complete -c eshowkw -s B -l bold -d 'Print each other column in bold for easier separation'
complete -c eshowkw -s C -l color -d 'Force colored output'
complete -c eshowkw -s O -l overlays -d 'Include overlays in search'
complete -c eshowkw -s P -l prefix -d 'Display prefix keywords in output'
complete -c eshowkw -s S -l ignore-slot -d 'Treat slots as irrelevant for redundant package detection'

# Package completion
complete -c eshowkw -f -a '(__gentoo_packages_available)'
