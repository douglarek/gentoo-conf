# Completion for euse (USE flag management tool)

# Helper function to check if no action option is given
function __euse_no_action_given
    not __fish_seen_subcommand_from -i --info -I --info-installed -a --active -E --enable -D --disable -R --remove -P --prune -h --help -v --version -p --package -g --global -l --local
end

# Basic options - always available
complete -c euse -s h -l help -d 'Show help'
complete -c euse -s v -l version -d 'Show version'
complete -c euse -s i -l info -d 'Show descriptions for given USE flags'
complete -c euse -s I -l info-installed -d 'Show descriptions and current impact on installed system'
complete -c euse -s a -l active -d 'Show currently active USE flags and their origin'
complete -c euse -s E -l enable -d 'Enable given USE flags'
complete -c euse -s D -l disable -d 'Disable given USE flags'
complete -c euse -s R -l remove -d 'Remove all references to given flags (revert to default)'
complete -c euse -s P -l prune -d 'Alias for --remove'
complete -c euse -s p -l package -d 'Apply to specific package only (use with -E, -D, -R)' -x

# Suboptions for -i/--info and -a/--active
complete -c euse -n '__fish_seen_subcommand_from -i --info -I --info-installed -a --active' -s g -l global -d 'Show only global USE flags'
complete -c euse -n '__fish_seen_subcommand_from -i --info -I --info-installed -a --active' -s l -l local -d 'Show only local USE flags'

# USE flag completion - show when after action options
complete -c euse -n '__fish_seen_subcommand_from -i --info -I --info-installed -a --active -E --enable -D --disable -R --remove -P --prune' -f -a '(__gentoo_packages_useflag)'

# When no option given, show long options as arguments (they will display descriptions)
complete -c euse -n __euse_no_action_given -f -a --help -d 'Show help'
complete -c euse -n __euse_no_action_given -f -a --version -d 'Show version'
complete -c euse -n __euse_no_action_given -f -a --info -d 'Show descriptions for given USE flags'
complete -c euse -n __euse_no_action_given -f -a --info-installed -d 'Show descriptions and current impact on installed system'
complete -c euse -n __euse_no_action_given -f -a --active -d 'Show currently active USE flags and their origin'
complete -c euse -n __euse_no_action_given -f -a --enable -d 'Enable given USE flags'
complete -c euse -n __euse_no_action_given -f -a --disable -d 'Disable given USE flags'
complete -c euse -n __euse_no_action_given -f -a --remove -d 'Remove all references to given flags (revert to default)'
complete -c euse -n __euse_no_action_given -f -a --prune -d 'Alias for --remove'
complete -c euse -n __euse_no_action_given -f -a --package -d 'Apply to specific package only (use with -E, -D, -R)'
