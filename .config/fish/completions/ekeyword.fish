# Fish completion for ekeyword

# Helper function to get Gentoo architectures plus 'all'
function __fish_ekeyword_arches
    echo all
    __fish_gentoo_arches
end

# Basic options
complete -c ekeyword -s h -l help -d 'Show this help message and exit'
complete -c ekeyword -s m -l manifest -d 'Run ebuild manifest on the ebuild after modifying it'
complete -c ekeyword -s n -l dry-run -d 'Show what would be changed, but do not commit'
complete -c ekeyword -s v -l verbose -d 'Be verbose while processing things'
complete -c ekeyword -s q -l quiet -d 'Be quiet while processing things (only show errors)'
complete -c ekeyword -s V -l version -d 'Show version information'

# --format option with values
complete -c ekeyword -l format -d 'Select output format for showing differences' -xa 'auto color-inline inline short-multi long-multi'

# File completion for .ebuild files (when no special prefix)
complete -c ekeyword -n 'not string match -qr -- "^[\^~-]" (commandline -ct)' -f -a '*.ebuild'

# Plain architecture keywords (when no special prefix)
complete -c ekeyword -n 'not string match -qr -- "^[\^~-]" (commandline -ct)' -f -a '(__fish_ekeyword_arches)'

# Architecture keywords with ^ prefix (when user types ^)
complete -c ekeyword -n 'string match -q -- "^*" (commandline -ct)' -f -a '(for arch in (__fish_ekeyword_arches); echo ^$arch; end)'

# Architecture keywords with ~ prefix (when user types ~)
complete -c ekeyword -n 'string match -q -- "~*" (commandline -ct)' -f -a '(for arch in (__fish_ekeyword_arches); echo ~$arch; end)'

# Architecture keywords with - prefix (when user types -arch, not --options)
complete -c ekeyword -n 'string match -qr -- "^-[a-z]" (commandline -ct)' -f -a '(for arch in (__fish_ekeyword_arches); echo -$arch; end)'
