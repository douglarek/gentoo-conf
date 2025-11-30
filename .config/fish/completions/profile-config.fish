# Completion for profile-config (shortcut for eselect profile)

# Actions with descriptions
complete -c profile-config -n '__fish_use_subcommand' -f -a '(eselect --colour=no profile usage 2>/dev/null | string match -r "^\s\s[a-z][a-z-]+\s+.*" | string trim | while read -l line; set -l parts (string match -r "^([a-z][a-z-]+)\s.*\s\s+(\S.+)\$" -- $line); test (count $parts) -eq 3; and printf "%s\t%s\n" $parts[2] $parts[3]; end)'

# Profiles for set action
complete -c profile-config -n '__fish_seen_subcommand_from set' -f -a '(eselect --colour=no --brief profile list 2>/dev/null)'
