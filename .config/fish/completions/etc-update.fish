# Completion for etc-update

complete -c etc-update -s d -l debug -d 'Enable shell debugging'
complete -c etc-update -s h -l help -d 'Show help message and exit'
complete -c etc-update -s p -l preen -d 'Auto-merge trivial changes only and exit'
complete -c etc-update -s q -l quiet -d 'Show only essential output'
complete -c etc-update -s v -l verbose -d 'Show settings and info along the way'
complete -c etc-update -s V -l version -d 'Show version and exit'
complete -c etc-update -l automode -d 'Automatically perform operation on all files' -xa '-3 -5 -7 -9'

# Directory completion
complete -c etc-update -r -F
