# Completion for eselect (Gentoo configuration and module manager)

# Helper function to get available eselect modules with descriptions
function __eselect_modules_with_desc
    eselect --colour=no modules list 2>/dev/null | string match -r '^\s+\S+.*\S' | string trim | while read -l line
        set -l parts (string match -r '^(\S+)\s+(.+)$' -- $line)
        if test (count $parts) -eq 3
            printf '%s\t%s\n' $parts[2] $parts[3]
        end
    end
end

# Helper function to get module names only (for condition checks)
function __eselect_modules
    eselect --colour=no modules list 2>/dev/null | string match -r '^\s+\S+' | string trim
end

# Helper function to get actions for a module (names only, for condition checks)
function __eselect_actions
    set -l module $argv[1]
    eselect --colour=no $module usage 2>/dev/null | string match -r '^\s\s[a-z][a-z-]+' | string trim | string replace -r '\s.*' ''
end

# Helper function to get actions with descriptions
function __eselect_actions_with_desc
    set -l module $argv[1]
    eselect --colour=no $module usage 2>/dev/null | string match -r '^\s\s[a-z][a-z-]+\s+.*' | string trim | while read -l line
        set -l parts (string match -r '^([a-z][a-z-]+)\s.*\s\s+(\S.+)$' -- $line)
        if test (count $parts) -eq 3
            printf '%s\t%s\n' $parts[2] $parts[3]
        end
    end
end

# Helper function to get list items for a module
function __eselect_list_items
    set -l module $argv[1]
    eselect --colour=no --brief $module list 2>/dev/null
end

# Helper function to get the current module from command line
function __eselect_current_module
    set -l tokens (commandline -opc)
    if test (count $tokens) -ge 2
        echo $tokens[2]
    end
end

# Helper function to get the current action from command line
function __eselect_current_action
    set -l tokens (commandline -opc)
    if test (count $tokens) -ge 3
        echo $tokens[3]
    end
end

# Global options
complete -c eselect -l brief -d 'Make output shorter'
complete -c eselect -l colour -d 'Enable or disable colour output' -xa 'yes no'
complete -c eselect -l color -d 'Enable or disable color output' -xa 'yes no'

# Module completion (first argument) - with descriptions
complete -c eselect -n '__fish_use_subcommand' -f -a '(eselect --colour=no modules list 2>/dev/null | string match -r "^\s+\S+.*\S" | string trim | while read -l line; set -l parts (string match -r "^(\S+)\s+(.+)\$" -- $line); test (count $parts) -eq 3; and printf "%s\t%s\n" $parts[2] $parts[3]; end)'

# Action completion (second argument) - generic
complete -c eselect -n '__fish_seen_subcommand_from (__eselect_modules); and not __fish_seen_subcommand_from (__eselect_actions (__eselect_current_module))' -f -a '(__eselect_actions_with_desc (__eselect_current_module))'

# Kernel module completions
complete -c eselect -n '__fish_seen_subcommand_from kernel; and __fish_seen_subcommand_from set' -f -a '(__eselect_list_items kernel | string replace "linux-" "")'

# Profile module completions
complete -c eselect -n '__fish_seen_subcommand_from profile; and __fish_seen_subcommand_from set' -f -a '(__eselect_list_items profile)'

# Timezone module completions
complete -c eselect -n '__fish_seen_subcommand_from timezone; and __fish_seen_subcommand_from set' -f -a '(__eselect_list_items timezone)'

# News module completions
complete -c eselect -n '__fish_seen_subcommand_from news; and __fish_seen_subcommand_from read unread' -f -a 'all new'
complete -c eselect -n '__fish_seen_subcommand_from news; and __fish_seen_subcommand_from read unread' -f -a '(eselect --colour=no --brief news list 2>/dev/null)'

# PHP module completions
complete -c eselect -n '__fish_seen_subcommand_from php; and __fish_seen_subcommand_from list set show update' -f -a '(eselect --colour=no --brief php list-modules 2>/dev/null)'

# Repository module completions
complete -c eselect -n '__fish_seen_subcommand_from repository; and __fish_seen_subcommand_from disable remove' -s f -d 'Force potentially dangerous removals'
complete -c eselect -n '__fish_seen_subcommand_from repository; and __fish_seen_subcommand_from list' -s i -d 'Only list installed'

# RC (runlevel) module completions
complete -c eselect -n '__fish_seen_subcommand_from rc; and __fish_seen_subcommand_from list show' -f -a '(command ls $EPREFIX/etc/runlevels 2>/dev/null)'
complete -c eselect -n '__fish_seen_subcommand_from rc; and __fish_seen_subcommand_from add delete pause reload restart start stop' -f -a '(rc-service -l 2>/dev/null)'

# Generic set/enable/disable completions for most modules
complete -c eselect -n 'not __fish_seen_subcommand_from kernel profile timezone news php rc repository; and __fish_seen_subcommand_from set enable' -f -a '(__eselect_list_items (__eselect_current_module))'
