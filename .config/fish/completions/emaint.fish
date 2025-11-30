# Completion for emaint (Gentoo system maintenance utility)

# Common options
complete -c emaint -s h -l help -d 'Show help message and exit'
complete -c emaint -l version -d "Show program's version number and exit"
complete -c emaint -s c -l check -d 'Check for any problems that may exist'
complete -c emaint -s f -l fix -d 'Fix any problems that may exist'
complete -c emaint -s p -l pretend -d 'Output logs that would be deleted (cleanlogs only)'
complete -c emaint -s t -l time -d 'Minimum age in days for logs (cleanlogs only)' -x
complete -c emaint -s C -l clean -d 'Clean logs from $PORT_LOGDIR (cleanlogs only)'
complete -c emaint -s P -l purge -d 'Remove list of previously failed merges (merges only)'
complete -c emaint -s a -l auto -d 'Sync repos with auto-sync enabled (sync only)'
complete -c emaint -s A -l allrepos -d 'Sync all repos with sync-url defined (sync only)'
complete -c emaint -s r -l repo -d 'Sync the specified repo' -xa '(__gentoo_repos_conf)'
complete -c emaint -l sync-submodule -d 'Restrict sync to specified submodule' -xa 'glsa news profiles'

# Emaint commands (subcommands)
complete -c emaint -n '__fish_use_subcommand' -xa 'all' -d 'Perform all supported commands'
complete -c emaint -n '__fish_use_subcommand' -xa 'logs' -d 'Clean out old logs from $PORT_LOGDIR'
complete -c emaint -n '__fish_use_subcommand' -xa 'sync' -d 'Perform sync actions on repositories'
complete -c emaint -n '__fish_use_subcommand' -xa 'merges' -d 'Scan and fix failed package merges'
complete -c emaint -n '__fish_use_subcommand' -xa 'binhost' -d 'Generate metadata index for binary packages'
complete -c emaint -n '__fish_use_subcommand' -xa 'cleanconfmem' -d 'Discard uninstalled config tracker entries'
complete -c emaint -n '__fish_use_subcommand' -xa 'cleanresume' -d 'Discard saved merge lists for --resume'
complete -c emaint -n '__fish_use_subcommand' -xa 'movebin' -d 'Perform package move updates for binaries'
complete -c emaint -n '__fish_use_subcommand' -xa 'moveinst' -d 'Perform package move updates for installed'
complete -c emaint -n '__fish_use_subcommand' -xa 'world' -d 'Fix problems in the world file'
