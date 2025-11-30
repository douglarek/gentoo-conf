# Completion for qgrep (portage-utils)
# Grep in ebuilds

# Common options
complete -c qgrep -l root -d 'Set the ROOT env var' -r -F
complete -c qgrep -s v -l verbose -d 'Make a lot of noise'
complete -c qgrep -s q -l quiet -d 'Tighter output; suppress warnings'
complete -c qgrep -s C -l nocolor -d 'Do not output color'
complete -c qgrep -s h -l help -d 'Print this help and exit'
complete -c qgrep -s V -l version -d 'Print version and exit'

# qgrep specific options
complete -c qgrep -s I -l invert-match -d 'Select non-matching lines'
complete -c qgrep -s i -l ignore-case -d 'Ignore case distinctions'
complete -c qgrep -s N -l with-name -d 'Print the filename for each match'
complete -c qgrep -s c -l count -d 'Only print a count of matching lines per FILE'
complete -c qgrep -s l -l list -d 'Only print FILE names containing matches'
complete -c qgrep -s L -l invert-list -d 'Only print FILE names containing no match'
complete -c qgrep -s e -l regexp -d 'Use PATTERN as a regular expression'
complete -c qgrep -s x -l extended -d 'Use PATTERN as an extended regular expression'
complete -c qgrep -s J -l installed -d 'Search in installed ebuilds instead of the tree'
complete -c qgrep -s E -l eclass -d 'Search in eclasses instead of ebuilds'
complete -c qgrep -s s -l skip-comments -d 'Skip comments lines'
complete -c qgrep -s R -l repo -d 'Print source repository name for each match (implies -N)'
complete -c qgrep -s S -l skip -d 'Skip lines matching pattern' -x
complete -c qgrep -s B -l before -d 'Print lines of leading context' -x
complete -c qgrep -s A -l after -d 'Print lines of trailing context' -x
