# Completion for qcheck (portage-utils)
# Verify integrity of installed packages

# Common options
complete -c qcheck -l root -d 'Set the ROOT env var' -r -F
complete -c qcheck -s v -l verbose -d 'Make a lot of noise'
complete -c qcheck -s q -l quiet -d 'Tighter output; suppress warnings'
complete -c qcheck -s C -l nocolor -d 'Do not output color'
complete -c qcheck -s h -l help -d 'Print this help and exit'
complete -c qcheck -s V -l version -d 'Print version and exit'

# qcheck specific options
complete -c qcheck -s F -l format -d 'Custom output format' -x
complete -c qcheck -s s -l skip -d 'Ignore files matching regex' -x
complete -c qcheck -s u -l update -d 'Update missing files, chksum and mtimes for packages'
complete -c qcheck -s A -l noafk -d 'Ignore missing files'
complete -c qcheck -s B -l badonly -d 'Only print pkgs containing bad files'
complete -c qcheck -s H -l nohash -d 'Ignore differing/unknown file chksums'
complete -c qcheck -s T -l nomtime -d 'Ignore differing file mtimes'
complete -c qcheck -s P -l skip-protected -d 'Ignore files in CONFIG_PROTECT-ed paths'
complete -c qcheck -s p -l prelink -d 'Undo prelink when calculating checksums'

# Package name completion
complete -c qcheck -f -a '(__fish_gentoo_packages_installed)'
