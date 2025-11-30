# Completion for qxpak (portage-utils)
# Manipulate xpak archives

# Common options
complete -c qxpak -l root -d 'Set the ROOT env var' -r -F
complete -c qxpak -s v -l verbose -d 'Make a lot of noise'
complete -c qxpak -s q -l quiet -d 'Tighter output; suppress warnings'
complete -c qxpak -s C -l nocolor -d 'Do not output color'
complete -c qxpak -s h -l help -d 'Print this help and exit'
complete -c qxpak -s V -l version -d 'Print version and exit'

# qxpak specific options
complete -c qxpak -s l -l list -d 'List the contents of an archive' -r -F
complete -c qxpak -s x -l extract -d 'Extract the contents of an archive' -r -F
complete -c qxpak -s c -l create -d 'Create an archive of a directory/files' -r -F
complete -c qxpak -s d -l dir -d 'Change to specified directory' -r -F
complete -c qxpak -s O -l stdout -d 'Write files to stdout'
