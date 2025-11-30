# Completion for kernel-config (shortcut for eselect kernel)

# Actions with descriptions
complete -c kernel-config -n '__fish_use_subcommand' -f -a '(eselect --colour=no kernel usage 2>/dev/null | string match -r "^\s\s[a-z][a-z-]+\s+.*" | string trim | while read -l line; set -l parts (string match -r "^([a-z][a-z-]+)\s.*\s\s+(\S.+)\$" -- $line); test (count $parts) -eq 3; and printf "%s\t%s\n" $parts[2] $parts[3]; end)'

# Items for set action
complete -c kernel-config -n '__fish_seen_subcommand_from set' -f -a '(eselect --colour=no --brief kernel list 2>/dev/null | string replace "linux-" "")'
