# Completion for qsearch (portage-utils)
# Search pkgname/desc

# Common options
complete -c qsearch -l root -d 'Set the ROOT env var' -r -F
complete -c qsearch -s v -l verbose -d 'Make a lot of noise'
complete -c qsearch -s q -l quiet -d 'Tighter output; suppress warnings'
complete -c qsearch -s C -l nocolor -d 'Do not output color'
complete -c qsearch -s h -l help -d 'Print this help and exit'
complete -c qsearch -s V -l version -d 'Print version and exit'

# qsearch specific options
complete -c qsearch -s a -l all -d 'List the descriptions of every package in the cache'
complete -c qsearch -s s -l search -d 'Regex search package basenames'
complete -c qsearch -s S -l desc -d 'Regex search package descriptions'
complete -c qsearch -s N -l name-only -d 'Only show package name'
complete -c qsearch -s H -l homepage -d 'Show homepage info instead of description'
complete -c qsearch -s R -l repo -d 'Show repository the ebuild originates from'
complete -c qsearch -s F -l format -d 'Print matched atom using given format string' -x
