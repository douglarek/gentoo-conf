# Completion for qatom (portage-utils)
# Split atom strings

# Common options
complete -c qatom -l root -d 'Set the ROOT env var' -r -F
complete -c qatom -s v -l verbose -d 'Make a lot of noise'
complete -c qatom -s q -l quiet -d 'Tighter output; suppress warnings'
complete -c qatom -s C -l nocolor -d 'Do not output color'
complete -c qatom -s h -l help -d 'Print this help and exit'
complete -c qatom -s V -l version -d 'Print version and exit'

# qatom specific options
complete -c qatom -s F -l format -d 'Custom output format' -x
complete -c qatom -s c -l compare -d 'Compare two atoms'
complete -c qatom -s p -l print -d 'Print reconstructed atom'
