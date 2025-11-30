# Completion for eix-installed (eix tools)
# Show installed packages

complete -c eix-installed -s h -d 'Help'
complete -c eix-installed -s '?' -d 'Help'
complete -c eix-installed -s a -d 'Same as -q all'
complete -c eix-installed -s q -d 'Quiet: output only packages, no text'
complete -c eix-installed -l '=' -d 'Output packages prefixed with "="'

complete -c eix-installed -x -a 'all' -d 'Output all installed packages'
complete -c eix-installed -x -a 'repo' -d 'Output packages installed with repository information'
complete -c eix-installed -x -a 'no-repo' -d 'Output packages installed without repository information'
complete -c eix-installed -x -a 'buildtime' -d 'Output packages installed with buildtime information'
complete -c eix-installed -x -a 'no-buildtime' -d 'Output packages installed without buildtime information'
