# Completion for eix-header (eix tools)
# Output database header

complete -c eix-header -s h -d 'Help'
complete -c eix-header -s H -d 'Help'
complete -c eix-header -s '?' -d 'Help'
complete -c eix-header -s q -d 'Quiet'
complete -c eix-header -s f -r -d 'Set database for next output' -a '*.eix'
complete -c eix-header -s s -r -d 'Set separator for next output' -a '"#"'
complete -c eix-header -s c -d 'Check if database is current'
complete -c eix-header -s C -d 'Output database format version'
complete -c eix-header -s l -r -d 'Output label' -a '0'
complete -c eix-header -s p -r -d 'Output path' -a '0'
complete -c eix-header -s o -r -d 'Output label and path' -a '0'
