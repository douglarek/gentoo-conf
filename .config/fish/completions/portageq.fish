# Completion for portageq

# portageq commands
complete -c portageq -n '__fish_use_subcommand' -xa '--help' -d 'Show help'
complete -c portageq -n '__fish_use_subcommand' -xa 'config_protect_mask' -d 'Returns CONFIG_PROTECT_MASK paths'
complete -c portageq -n '__fish_use_subcommand' -xa 'config_protect' -d 'Returns CONFIG_PROTECT paths'
complete -c portageq -n '__fish_use_subcommand' -xa 'portdir' -d 'Returns PORTDIR paths'
complete -c portageq -n '__fish_use_subcommand' -xa 'contents' -d 'List installed files for a package'
complete -c portageq -n '__fish_use_subcommand' -xa 'vdb_path' -d 'Returns var (installed) package database path'
complete -c portageq -n '__fish_use_subcommand' -xa 'gentoo_mirrors' -d 'Returns configured mirrors'
complete -c portageq -n '__fish_use_subcommand' -xa 'exithandler' -d 'MISSING DOCUMENTATION'
complete -c portageq -n '__fish_use_subcommand' -xa 'all_best_visible' -d 'Returns all best_visible packages'
complete -c portageq -n '__fish_use_subcommand' -xa 'match' -d 'Returns list of category/package-version'
complete -c portageq -n '__fish_use_subcommand' -xa 'metadata' -d 'Returns metadata values for package'
complete -c portageq -n '__fish_use_subcommand' -xa 'best_visible' -d 'Returns category/package-version'
complete -c portageq -n '__fish_use_subcommand' -xa 'mass_best_visible' -d 'Returns category/package-version'
complete -c portageq -n '__fish_use_subcommand' -xa 'has_version' -d 'Return 0 if available, 1 otherwise'
complete -c portageq -n '__fish_use_subcommand' -xa 'envvar' -d 'Returns specific environment variable'
complete -c portageq -n '__fish_use_subcommand' -xa 'pkgdir' -d 'Returns PKGDIR path'
complete -c portageq -n '__fish_use_subcommand' -xa 'best_version' -d 'Returns category/package-version'
complete -c portageq -n '__fish_use_subcommand' -xa 'mass_best_version' -d 'Returns category/package-version'
complete -c portageq -n '__fish_use_subcommand' -xa 'portdir_overlay' -d 'Returns PORTDIR_OVERLAY path'
complete -c portageq -n '__fish_use_subcommand' -xa 'distdir' -d 'Returns DISTDIR path'
complete -c portageq -n '__fish_use_subcommand' -xa 'owners' -d 'Print packages that own files'
complete -c portageq -n '__fish_use_subcommand' -xa 'get_repos' -d 'List all repositories'
complete -c portageq -n '__fish_use_subcommand' -xa 'get_repo_path' -d 'Get repository path'
complete -c portageq -n '__fish_use_subcommand' -xa 'repos_config' -d 'Alias for repositories_configuration command'

# For commands that need root argument (most commands)
set -l needs_root 'contents all_best_visible match metadata best_visible mass_best_visible has_version best_version mass_best_version owners'

# Root path completion (typically / or a specific root)
complete -c portageq -n "__fish_seen_subcommand_from $needs_root; and test (count (commandline -opc)) -eq 2" -r -F

# Package name completion for package-related commands
complete -c portageq -n '__fish_seen_subcommand_from has_version best_version mass_best_version; and test (count (commandline -opc)) -ge 3' -f -a '(__gentoo_packages_available)'

# File completion for owners command
complete -c portageq -n '__fish_seen_subcommand_from owners; and test (count (commandline -opc)) -ge 3' -r -F
