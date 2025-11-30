# Completion for equery (Gentoo package query tool)

# Global options
complete -c equery -s C -l nocolor -d 'Turn off colors'
complete -c equery -s N -l no-pipe -d 'Turn off pipe detection'
complete -c equery -s q -l quiet -d 'Minimal output'
complete -c equery -s h -l help -d 'Show help'
complete -c equery -s V -l version -d 'Show version'

# Common search scope options (for multiple subcommands)
set -l scope_cmds 'has hasuse list'
complete -c equery -n "__fish_seen_subcommand_from $scope_cmds" -s I -l exclude-installed -d 'Do not search installed packages'
complete -c equery -n "__fish_seen_subcommand_from $scope_cmds" -s p -l portage-tree -d 'Also search in portage tree'
complete -c equery -n "__fish_seen_subcommand_from $scope_cmds" -s o -l overlay-tree -d 'Also search in overlay tree'

# Subcommands
complete -c equery -n '__fish_use_subcommand' -xa 'belongs' -d 'List all packages owning file(s)'
complete -c equery -n '__fish_use_subcommand' -xa 'b' -d 'Alias for belongs'
complete -c equery -n '__fish_use_subcommand' -xa 'check' -d 'Check MD5sums and timestamps of package'
complete -c equery -n '__fish_use_subcommand' -xa 'k' -d 'Alias for check'
complete -c equery -n '__fish_use_subcommand' -xa 'depends' -d 'List all packages depending on specified package'
complete -c equery -n '__fish_use_subcommand' -xa 'd' -d 'Alias for depends'
complete -c equery -n '__fish_use_subcommand' -xa 'depgraph' -d 'Display dependency tree for package'
complete -c equery -n '__fish_use_subcommand' -xa 'g' -d 'Alias for depgraph'
complete -c equery -n '__fish_use_subcommand' -xa 'files' -d 'List files owned by package'
complete -c equery -n '__fish_use_subcommand' -xa 'f' -d 'Alias for files'
complete -c equery -n '__fish_use_subcommand' -xa 'has' -d 'List installed packages where KEY matches VALUE'
complete -c equery -n '__fish_use_subcommand' -xa 'a' -d 'Alias for has'
complete -c equery -n '__fish_use_subcommand' -xa 'hasuse' -d 'List all packages with specified USE flag'
complete -c equery -n '__fish_use_subcommand' -xa 'h' -d 'Alias for hasuse'
complete -c equery -n '__fish_use_subcommand' -xa 'list' -d 'List all packages matching pattern'
complete -c equery -n '__fish_use_subcommand' -xa 'l' -d 'Alias for list'
complete -c equery -n '__fish_use_subcommand' -xa 'meta' -d 'Display metadata about package'
complete -c equery -n '__fish_use_subcommand' -xa 'm' -d 'Alias for meta'
complete -c equery -n '__fish_use_subcommand' -xa 'size' -d 'Print size of files contained in package'
complete -c equery -n '__fish_use_subcommand' -xa 's' -d 'Alias for size'
complete -c equery -n '__fish_use_subcommand' -xa 'uses' -d 'Display USE flags for package'
complete -c equery -n '__fish_use_subcommand' -xa 'u' -d 'Alias for uses'
complete -c equery -n '__fish_use_subcommand' -xa 'which' -d 'Print full path to ebuild for package'
complete -c equery -n '__fish_use_subcommand' -xa 'w' -d 'Alias for which'
complete -c equery -n '__fish_use_subcommand' -xa 'keywords' -d 'Display keywords for specified package'
complete -c equery -n '__fish_use_subcommand' -xa 'y' -d 'Alias for keywords'

# belongs/b subcommand options
complete -c equery -n '__fish_seen_subcommand_from belongs b' -s e -l early-out -d 'Stop when first match found'
complete -c equery -n '__fish_seen_subcommand_from belongs b' -s f -l full-regex -d 'Supplied query is a regex' -x
complete -c equery -n '__fish_seen_subcommand_from belongs b' -s n -l name-only -d "Don't print version"
complete -c equery -n '__fish_seen_subcommand_from belongs b' -r -F

# check/k subcommand options
complete -c equery -n '__fish_seen_subcommand_from check k' -s f -l full-regex -d 'Supplied query is a regex' -x
complete -c equery -n '__fish_seen_subcommand_from check k' -s o -l only-failures -d 'Only display packages that do not pass'
complete -c equery -n '__fish_seen_subcommand_from check k' -f -a '(__gentoo_packages_installed)'

# depends/d subcommand options
complete -c equery -n '__fish_seen_subcommand_from depends d' -s a -l all-packages -d 'Search in all available packages (slow)'
complete -c equery -n '__fish_seen_subcommand_from depends d' -s D -l indirect -d 'Search indirect dependencies (VERY slow)'
complete -c equery -n '__fish_seen_subcommand_from depends d' -l depth -d 'Limit indirect dependency tree depth' -x
complete -c equery -n '__fish_seen_subcommand_from depends d' -f -a '(__gentoo_packages_installed)'

# depgraph/g subcommand options
complete -c equery -n '__fish_seen_subcommand_from depgraph g' -s A -l no-atom -d 'Do not show dependency atom'
complete -c equery -n '__fish_seen_subcommand_from depgraph g' -s M -l no-mask -d 'Do not show masking status'
complete -c equery -n '__fish_seen_subcommand_from depgraph g' -s U -l no-useflags -d 'Do not show USE flags'
complete -c equery -n '__fish_seen_subcommand_from depgraph g' -s l -l linear -d 'Do not use fancy formatting'
complete -c equery -n '__fish_seen_subcommand_from depgraph g' -f -a '(__gentoo_packages_installed)'

# files/f subcommand options
complete -c equery -n '__fish_seen_subcommand_from files f' -s m -l md5sum -d 'Include MD5 sum in output'
complete -c equery -n '__fish_seen_subcommand_from files f' -s s -l timestamp -d 'Include timestamp in output'
complete -c equery -n '__fish_seen_subcommand_from files f' -s t -l type -d 'Include file type in output'
complete -c equery -n '__fish_seen_subcommand_from files f' -l tree -d 'Display results in a tree'
complete -c equery -n '__fish_seen_subcommand_from files f' -l filter -d 'Filter output' -xa 'dir obj sym dev fifo path conf cmd doc man info'
complete -c equery -n '__fish_seen_subcommand_from files f' -f -a '(__gentoo_packages_installed)'

# has/a subcommand options
complete -c equery -n '__fish_seen_subcommand_from has a' -s F -l format -d 'Format template (see man page)' -x

# hasuse/h subcommand options
complete -c equery -n '__fish_seen_subcommand_from hasuse h' -s F -l format -d 'Specify custom output format' -x
complete -c equery -n '__fish_seen_subcommand_from hasuse h' -f -a '(__gentoo_packages_useflag)'

# list/l subcommand options
complete -c equery -n '__fish_seen_subcommand_from list l' -s d -l duplicates -d 'List only installed duplicate packages'
complete -c equery -n '__fish_seen_subcommand_from list l' -s b -l binpkgs-missing -d 'List only packages without binary package'
complete -c equery -n '__fish_seen_subcommand_from list l' -s f -l full-regex -d 'Supplied query is a regex' -x
complete -c equery -n '__fish_seen_subcommand_from list l' -s m -l mask-reason -d 'Include reason for package mask'
complete -c equery -n '__fish_seen_subcommand_from list l' -s F -l format -d 'Format template (see man page)' -x

# meta/m subcommand options
complete -c equery -n '__fish_seen_subcommand_from meta m' -s d -l description -d 'Show extended package description'
complete -c equery -n '__fish_seen_subcommand_from meta m' -s H -l herd -d 'Show herd(s) for package'
complete -c equery -n '__fish_seen_subcommand_from meta m' -s k -l keywords -d 'Show keywords for all matching versions'
complete -c equery -n '__fish_seen_subcommand_from meta m' -s l -l license -d 'Show licenses for best matching version'
complete -c equery -n '__fish_seen_subcommand_from meta m' -s m -l maintainer -d 'Show maintainer(s) for package'
complete -c equery -n '__fish_seen_subcommand_from meta m' -s S -l stablreq -d 'Show STABLEREQ arches for all matching versions'
complete -c equery -n '__fish_seen_subcommand_from meta m' -s u -l useflags -d 'Show per-package USE flag descriptions'
complete -c equery -n '__fish_seen_subcommand_from meta m' -s U -l upstream -d 'Show package upstream information'
complete -c equery -n '__fish_seen_subcommand_from meta m' -s x -l xml -d 'Show plain metadata.xml file'
complete -c equery -n '__fish_seen_subcommand_from meta m' -f -a '(__gentoo_packages_available)'

# size/s subcommand options
complete -c equery -n '__fish_seen_subcommand_from size s' -s b -l bytes -d 'Report size in bytes'
complete -c equery -n '__fish_seen_subcommand_from size s' -s f -l full-regex -d 'Supplied query is a regex' -x
complete -c equery -n '__fish_seen_subcommand_from size s' -f -a '(__gentoo_packages_installed)'

# uses/u subcommand options
complete -c equery -n '__fish_seen_subcommand_from uses u' -s a -l all -d 'Include non-installed packages'
complete -c equery -n '__fish_seen_subcommand_from uses u' -s i -l ignore-linguas -d "Don't show linguas USE flags"
complete -c equery -n '__fish_seen_subcommand_from uses u' -f -a '(__gentoo_packages_installed)'

# which/w subcommand options
complete -c equery -n '__fish_seen_subcommand_from which w' -s m -l include-masked -d 'Return highest version ebuild available'
complete -c equery -n '__fish_seen_subcommand_from which w' -s e -l ebuild -d 'Print the ebuild'
complete -c equery -n '__fish_seen_subcommand_from which w' -f -a '(__gentoo_packages_available)'

# keywords/y subcommand - package completion
complete -c equery -n '__fish_seen_subcommand_from keywords y' -f -a '(__gentoo_packages_available)'
