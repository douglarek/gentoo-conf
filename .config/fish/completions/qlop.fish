# Completion for qlop (portage-utils)
# Emerge log analyzer

# Common options
complete -c qlop -l root -d 'Set the ROOT env var' -r -F
complete -c qlop -s v -l verbose -d 'Make a lot of noise'
complete -c qlop -s q -l quiet -d 'Tighter output; suppress warnings'
complete -c qlop -s C -l nocolor -d 'Do not output color'
complete -c qlop -s h -l help -d 'Print this help and exit'
complete -c qlop -s V -l version -d 'Print version and exit'

# qlop specific options
complete -c qlop -s c -l summary -d 'Print summary of average merges (implies -a)'
complete -c qlop -s t -l time -d 'Print time taken to complete action'
complete -c qlop -s a -l average -d 'Print average time taken to complete action'
complete -c qlop -s H -l human -d 'Print elapsed time in human readable format'
complete -c qlop -s M -l machine -d 'Print elapsed time as seconds with no formatting'
complete -c qlop -s m -l merge -d 'Show merge history'
complete -c qlop -s u -l unmerge -d 'Show unmerge history'
complete -c qlop -s U -l autoclean -d 'Show autoclean unmerge history'
complete -c qlop -s s -l sync -d 'Show sync history'
complete -c qlop -s e -l endtime -d 'Report time at which operation finished'
complete -c qlop -s r -l running -d 'Show current emerging packages'
complete -c qlop -s d -l date -d 'Limit selection to this time' -x
complete -c qlop -s l -l lastmerge -d 'Limit selection to last Portage emerge action'
complete -c qlop -s f -l logfile -d 'Read emerge logfile' -r -F
complete -c qlop -s w -l atoms -d 'Read package atoms to report from file' -r -F
complete -c qlop -s F -l format -d 'Print matched atom using given format string' -x

# Package name completion
complete -c qlop -f -a '(__fish_gentoo_packages_available)'
