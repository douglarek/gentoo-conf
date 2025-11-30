# Completion for rc-config (shortcut for eselect rc)

# Actions with descriptions
complete -c rc-config -n '__fish_use_subcommand' -f -a '(eselect --colour=no rc usage 2>/dev/null | string match -r "^\s\s[a-z][a-z-]+\s+.*" | string trim | while read -l line; set -l parts (string match -r "^([a-z][a-z-]+)\s.*\s\s+(\S.+)\$" -- $line); test (count $parts) -eq 3; and printf "%s\t%s\n" $parts[2] $parts[3]; end)'

# Runlevels for list/show actions
complete -c rc-config -n '__fish_seen_subcommand_from list show' -f -a '(command ls $EPREFIX/etc/runlevels 2>/dev/null)'

# Scripts for service management actions
complete -c rc-config -n '__fish_seen_subcommand_from add delete pause reload restart start stop' -f -a '(rc-service -l 2>/dev/null)'

# Runlevels for add/delete second argument
complete -c rc-config -n '__fish_seen_subcommand_from add delete; and test (count (commandline -opc)) -eq 3' -f -a '(command ls $EPREFIX/etc/runlevels 2>/dev/null)'
