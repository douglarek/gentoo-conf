# Completion for glsa-check (Gentoo Linux Security Advisories checker)

# Action options (mutually exclusive)
complete -c glsa-check -s l -l list -d 'List all unapplied GLSA'
complete -c glsa-check -s d -l dump -d 'Show all information about given GLSA'
complete -c glsa-check -l print -d 'Show all information about given GLSA'
complete -c glsa-check -s t -l test -d 'Test if system is affected by given GLSA'
complete -c glsa-check -s p -l pretend -d 'Show necessary commands to apply GLSA'
complete -c glsa-check -s f -l fix -d 'Try to auto-apply GLSA (experimental)'
complete -c glsa-check -s i -l inject -d 'Inject given GLSA into checkfile'
complete -c glsa-check -s m -l mail -d 'Send mail with given GLSAs to administrator'

# General options
complete -c glsa-check -s n -l nocolor -d 'Disable colors'
complete -c glsa-check -s h -l help -d 'Show help message'
complete -c glsa-check -s V -l version -d 'Show version information'
complete -c glsa-check -s v -l verbose -d 'Print more messages'
complete -c glsa-check -s c -l cve -d 'Show CVE ids in listing mode'

# GLSA ID completion - special identifiers
complete -c glsa-check -xa 'all' -d 'All GLSAs'
complete -c glsa-check -xa 'new' -d 'New GLSAs'
complete -c glsa-check -xa 'affected' -d 'GLSAs affecting this system'
