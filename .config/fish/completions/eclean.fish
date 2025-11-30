# Completion for eclean (clean outdated packages and distfiles)

# Global options
complete -c eclean -s C -l nocolor -d 'Turn off colors'
complete -c eclean -s d -l destructive -d 'Only keep minimum for reinstallation'
complete -c eclean -s e -l exclude-file -d 'Path to exclusion file' -r -F
complete -c eclean -s i -l interactive -d 'Ask confirmation before deletions'
complete -c eclean -s n -l package-names -d 'Protect all versions (when --destructive)'
complete -c eclean -s p -l pretend -d 'Only display what would be cleaned'
complete -c eclean -s q -l quiet -d 'Minimal output'
complete -c eclean -s t -l time-limit -d "Don't delete files modified since <time>" -x
complete -c eclean -s h -l help -d 'Show help'
complete -c eclean -s V -l version -d 'Show version'

# Distfiles-specific options
complete -c eclean -n '__fish_seen_subcommand_from distfiles' -s s -l size-limit -d 'Do not delete distfiles bigger than <size>' -x
complete -c eclean -n '__fish_seen_subcommand_from distfiles' -s f -l fetch-restricted -d 'Protect fetch-restricted files'

# Subcommands
complete -c eclean -n '__fish_use_subcommand' -xa 'packages' -d 'Clean outdated binary packages'
complete -c eclean -n '__fish_use_subcommand' -xa 'distfiles' -d 'Clean outdated package source files'
