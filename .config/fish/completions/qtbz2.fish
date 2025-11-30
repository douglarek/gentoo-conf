# Completion for qtbz2 (portage-utils)
# Manipulate tbz2 packages

# Common options
complete -c qtbz2 -l root -d 'Set the ROOT env var' -r -F
complete -c qtbz2 -s v -l verbose -d 'Make a lot of noise'
complete -c qtbz2 -s q -l quiet -d 'Tighter output; suppress warnings'
complete -c qtbz2 -s C -l nocolor -d 'Do not output color'
complete -c qtbz2 -s h -l help -d 'Print this help and exit'
complete -c qtbz2 -s V -l version -d 'Print version and exit'

# qtbz2 specific options
complete -c qtbz2 -s d -l dir -d 'Change to specified directory' -r -F
complete -c qtbz2 -s j -l join -d 'Join tar.bz2 + xpak into a tbz2' -r -F
complete -c qtbz2 -s s -l split -d 'Split a tbz2 into tar.bz2 + xpak' -r -F
complete -c qtbz2 -s t -l tarbz2 -d 'Just split the tar.bz2' -r -F
complete -c qtbz2 -s x -l xpak -d 'Just split the xpak' -r -F
complete -c qtbz2 -s O -l stdout -d 'Write files to stdout'
