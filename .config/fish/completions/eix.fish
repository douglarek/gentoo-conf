# Fish shell completions for gentoo eix and related tools
# Comprehensive completion file based on zsh completions

# Helper function to get eix variables
function __eix_get_var
    eix --print $argv[1] 2>/dev/null
end

# Helper function to get packages
function __eix_get_packages
    set -l opts --pure-packages --format '<category>/<name>\n'
    if test "$argv[1]" = "installed"
        set opts $opts -I
    end
    eix $opts 2>/dev/null
end

# Helper function to get categories
function __eix_get_categories
    set -l opts --pure-packages --format '<category>\n'
    if test "$argv[1]" = "installed"
        set opts $opts -I
    end
    eix $opts 2>/dev/null
end

# Helper function to get package names
function __eix_get_names
    set -l opts --pure-packages --format '<name>\n'
    if test "$argv[1]" = "installed"
        set opts $opts -I
    end
    eix $opts 2>/dev/null
end

# Helper function to get overlays
function __eix_get_overlays
    set -l overlays (__eix_get_var PORTDIR_OVERLAY | string split ' ')
    set overlays $overlays (__eix_get_var PORTDIR)
    for i in (seq (count $overlays))
        echo $i
    end
    printf '%s\n' $overlays
end

# Helper function to get useflags
function __eix_get_useflags
    eix --print-all-useflags 2>/dev/null | sed 's/^[()+-]*//g'
end

# Helper function to get licenses
function __eix_get_licenses
    eix --print-all-licenses 2>/dev/null | sed 's/[()| ]//g'
end

# Helper function to get slots
function __eix_get_slots
    eix --print-all-slots 2>/dev/null
end

# Helper function to get sets
function __eix_get_sets
    set -l portdir (__eix_get_var PORTDIR)
    set -l overlays (__eix_get_var PORTDIR_OVERLAY | string split ' ')
    set -l local_sets (__eix_get_var EIX_LOCAL_SETS | string split ' ')

    for setdir in $local_sets
        if test -d "$setdir"
            find -L "$setdir" -type f -name '[!.]*' -printf '%f\n' 2>/dev/null
        end
    end
end

#############################################################################
# eix-header completions
#############################################################################

complete -c eix-header -s h -d 'Help'
complete -c eix-header -s H -d 'Help'
complete -c eix-header -s '?' -d 'Help'
complete -c eix-header -s q -d 'Quiet'
complete -c eix-header -s f -r -d 'Set database for next output' -a '*.eix'
complete -c eix-header -s s -r -d 'Set separator for next output' -a '"#"'
complete -c eix-header -s c -d 'Check if database is current'
complete -c eix-header -s C -d 'Output database format version'
complete -c eix-header -s l -r -d 'Output label' -a '0'
complete -c eix-header -s p -r -d 'Output path' -a '0'
complete -c eix-header -s o -r -d 'Output label and path' -a '0'

#############################################################################
# eix-installed completions
#############################################################################

complete -c eix-installed -s h -d 'Help'
complete -c eix-installed -s '?' -d 'Help'
complete -c eix-installed -s a -d 'Same as -q all'
complete -c eix-installed -s q -d 'Quiet: output only packages, no text'
complete -c eix-installed -l '=' -d 'Output packages prefixed with "="'

complete -c eix-installed -x -a 'all' -d 'Output all installed packages'
complete -c eix-installed -x -a 'repo' -d 'Output packages installed with repository information'
complete -c eix-installed -x -a 'no-repo' -d 'Output packages installed without repository information'
complete -c eix-installed -x -a 'buildtime' -d 'Output packages installed with buildtime information'
complete -c eix-installed -x -a 'no-buildtime' -d 'Output packages installed without buildtime information'

#############################################################################
# eix-installed-after completions
#############################################################################

complete -c eix-installed-after -s h -d 'Help'
complete -c eix-installed-after -s '?' -d 'Help'
complete -c eix-installed-after -s I -d 'Include the given package in the output'
complete -c eix-installed-after -s f -d 'Output full list of packages'
complete -c eix-installed-after -s l -d 'Use /var/log/emerge.log to determine first install time'
complete -c eix-installed-after -s L -r -F -d 'Use LOG to determine first install time'
complete -c eix-installed-after -s e -r -d 'Use TIME as reference time (seconds since epoch)'
complete -c eix-installed-after -s F -r -F -d 'Use mtime as reference time'
complete -c eix-installed-after -s a -r -d 'Increase match for -l or -L or -e by SEC seconds'
complete -c eix-installed-after -s A -r -d 'Decrease match for -l or -L or -e by SEC seconds'
complete -c eix-installed-after -s b -d 'Output packages installed before (not after) the package'
complete -c eix-installed-after -s i -d 'Ignore all previous options'
complete -c eix-installed-after -s S -d 'Choose first matching slot'
complete -c eix-installed-after -s V -d 'Look for category/package-version, not category/package:slot'
complete -c eix-installed-after -s d -d 'Output installation date after package'
complete -c eix-installed-after -s s -d 'Output slot also in case of no ambiguity'
complete -c eix-installed-after -s v -d 'Output category/package-version, not category/package:slot'
complete -c eix-installed-after -l '=' -d 'Output =category/package-version, not category/package:slot'
complete -c eix-installed-after -s t -d 'Use build time independent of USE_BUILD_TIME'
complete -c eix-installed-after -s T -d 'Never use build time independent of USE_BUILD_TIME'

# Package completion for eix-installed-after
complete -c eix-installed-after -x -a '(__eix_get_packages installed)'

#############################################################################
# eix-remote completions
#############################################################################

complete -c eix-remote -s h -d 'Help'
complete -c eix-remote -s '?' -d 'Help'
complete -c eix-remote -s L -d 'Print LOCAL_LAYMAN and exit'
complete -c eix-remote -s k -d 'Keep permissions'
complete -c eix-remote -s K -d 'Keep permissions, resistant to -i'
complete -c eix-remote -s x -d 'Exclude local overlays which are remote'
complete -c eix-remote -s X -d 'Exclude remote overlays which are local'
complete -c eix-remote -s l -r -F -d 'Use PATH as LOCAL_LAYMAN'
complete -c eix-remote -s a -r -d 'Use ADDR as remote database'
complete -c eix-remote -s i -d 'Ignore all previous options'
complete -c eix-remote -s v -d 'Verbose (default)'
complete -c eix-remote -s H -d 'No status line update'
complete -c eix-remote -s q -d 'Quiet'

complete -c eix-remote -x -a 'update' -d 'Fetch eix-caches1 and add them to the eix database'
complete -c eix-remote -x -a 'update1' -d 'Fetch eix-caches1 and add them to the eix database'
complete -c eix-remote -x -a 'update2' -d 'Fetch eix-caches2 and add them to the eix database'
complete -c eix-remote -x -a 'add' -d 'Add fetched eix-caches1 to the eix database'
complete -c eix-remote -x -a 'add1' -d 'Add fetched eix-caches1 to the eix database'
complete -c eix-remote -x -a 'add2' -d 'Add fetched eix-caches2 to the eix database'
complete -c eix-remote -x -a 'fetch' -d 'Fetch eix-caches1'
complete -c eix-remote -x -a 'fetch1' -d 'Fetch eix-caches1'
complete -c eix-remote -x -a 'fetch2' -d 'Fetch eix-caches2'
complete -c eix-remote -x -a 'remove' -d 'Remove temporarily added virtual overlays from eix database'

#############################################################################
# eix-sync completions
#############################################################################

complete -c eix-sync -s h -d 'Help'
complete -c eix-sync -s '?' -d 'Help'
complete -c eix-sync -s i -d 'Ignore all previous options'
complete -c eix-sync -s s -r -d 'Rsync from SERVER; this implies -0'
complete -c eix-sync -s 2 -r -d 'Rsync to SERVER'
complete -c eix-sync -s 0 -d 'No eix -sync'
complete -c eix-sync -s U -d 'Do not touch database and omit @ hooks after eix-update'
complete -c eix-sync -s u -d 'Update database only and show differences. Equivalent to -0l@s ""'
complete -c eix-sync -s l -d 'Do not call layman or ! hooks'
complete -c eix-sync -s '@' -d 'Do not execute @ or @@ hooks'
complete -c eix-sync -s S -d 'Do not execute @ hooks after emerge --sync'
complete -c eix-sync -s M -d 'Run emerge -metadata'
complete -c eix-sync -s N -d 'Cancel previous -M'
complete -c eix-sync -s t -d 'Use temporary file to save current database'
complete -c eix-sync -s T -d 'Do not measure time'
complete -c eix-sync -s q -d 'Be quiet (close stdout)'
complete -c eix-sync -s w -d 'Run emerge-webrsync instead of emerge --sync'
complete -c eix-sync -s W -d 'Run emerge-delta-webrsync instead of emerge --sync'
complete -c eix-sync -s c -r -F -d 'Run CMD instead of emerge --sync'
complete -c eix-sync -s C -r -d 'Add OPT to emerge --sync'
complete -c eix-sync -s o -r -d 'Add OPT to eix-update'
complete -c eix-sync -s L -r -d 'Add OPT to layman'
complete -c eix-sync -s r -d 'Clear /var/cache/edb/dep/* before syncing'
complete -c eix-sync -s R -d 'Cancel previous -r'
complete -c eix-sync -s v -d 'Verbose'
complete -c eix-sync -s n -d 'Dry run; combine with -v'
complete -c eix-sync -s H -d 'No status line update'

#############################################################################
# eix-test-obsolete completions
#############################################################################

complete -c eix-test-obsolete -s h -d 'Help'
complete -c eix-test-obsolete -s '?' -d 'Help'
complete -c eix-test-obsolete -s c -d 'Use CHECK_INSTALLED_OVERLAYS=true'
complete -c eix-test-obsolete -s C -d 'Use CHECK_INSTALLED_OVERLAYS=repository'
complete -c eix-test-obsolete -s d -d 'Instead of argument "detail"'
complete -c eix-test-obsolete -s b -d 'Instead of argument "brief"'
complete -c eix-test-obsolete -s q -d 'Instead of argument "quick"'
complete -c eix-test-obsolete -s H -d 'No status line update'

complete -c eix-test-obsolete -x -a 'detail' -d 'Slow and very detailed output of redundant packages'
complete -c eix-test-obsolete -x -a 'brief' -d 'Normal output of redundant packages'
complete -c eix-test-obsolete -x -a 'quick' -d 'Quick and rather silent output of redundant packages'

#############################################################################
# Main eix, eix-diff, eix-update completions
#############################################################################

# Common options for all three commands
complete -c eix -s h -l help -d 'Help'
complete -c eix -s v -l version -d 'Version'
complete -c eix -l print -r -d 'Print expanded variable value' -a '(eix --known-vars 2>/dev/null)'
complete -c eix -l dump -d 'Dump variables'
complete -c eix -l dump-defaults -d 'Dump default values of variables'
complete -c eix -s q -l quiet -d 'No output'
complete -c eix -s n -l nocolor -d 'Do not use colors in output'
complete -c eix -s F -l force-color -d 'Force color on non-terminal'
complete -c eix -s Q -l quick -d 'Do not try to read unguessable slots'
complete -c eix -l care -d 'Always read slots of installed packages'
complete -c eix -l deps-installed -d 'Always read deps of installed packages'
complete -c eix -l ansi -d 'Reset the ansi 256 color palette'

complete -c eix-diff -s h -l help -d 'Help'
complete -c eix-diff -s v -l version -d 'Version'
complete -c eix-diff -l print -r -d 'Print expanded variable value' -a '(eix --known-vars 2>/dev/null)'
complete -c eix-diff -l dump -d 'Dump variables'
complete -c eix-diff -l dump-defaults -d 'Dump default values of variables'
complete -c eix-diff -s q -l quiet -d 'No output'
complete -c eix-diff -s n -l nocolor -d 'Do not use colors in output'
complete -c eix-diff -s F -l force-color -d 'Force color on non-terminal'
complete -c eix-diff -s Q -l quick -d 'Do not try to read unguessable slots'
complete -c eix-diff -l care -d 'Always read slots of installed packages'
complete -c eix-diff -l deps-installed -d 'Always read deps of installed packages'
complete -c eix-diff -l ansi -d 'Reset the ansi 256 color palette'

complete -c eix-update -s h -l help -d 'Help'
complete -c eix-update -s v -l version -d 'Version'
complete -c eix-update -l print -r -d 'Print expanded variable value' -a '(eix --known-vars 2>/dev/null)'
complete -c eix-update -l dump -d 'Dump variables'
complete -c eix-update -l dump-defaults -d 'Dump default values of variables'
complete -c eix-update -s q -l quiet -d 'No output'
complete -c eix-update -s n -l nocolor -d 'Do not use colors in output'
complete -c eix-update -s F -l force-color -d 'Force color on non-terminal'
complete -c eix-update -s Q -l quick -d 'Do not try to read unguessable slots'
complete -c eix-update -l care -d 'Always read slots of installed packages'
complete -c eix-update -l deps-installed -d 'Always read deps of installed packages'
complete -c eix-update -l ansi -d 'Reset the ansi 256 color palette'

# eix-update specific options
complete -c eix-update -s H -l nostatus -d 'Do not update status line'
complete -c eix-update -l force-status -d 'Force status line on non-terminal'
complete -c eix-update -s o -l output -r -F -d 'Output to FILE'
complete -c eix-update -s x -l exclude-overlay -r -d 'Exclude overlay' -a '(__eix_get_overlays)'
complete -c eix-update -s a -l add-overlay -r -F -d 'Add overlay'
complete -c eix-update -s m -l override-method -r -d 'Override method for overlay mask' -a '(__eix_get_overlays)'
complete -c eix-update -s r -l repo-name -r -d 'Set REPO_NAME for OVERLAY' -a '(__eix_get_overlays)'

# eix-diff specific options
complete -c eix-diff -x -a '*.eix' -d 'Old cache file'

# Main eix specific options
complete -c eix -l print-all-useflags -d 'Print all IUSE words'
complete -c eix -l print-all-keywords -d 'Print all KEYWORDS words'
complete -c eix -l print-all-slots -d 'Print all SLOT strings'
complete -c eix -l print-all-licenses -d 'Print all LICENSE strings'
complete -c eix -l print-all-depends -d 'Print all *DEPEND words'
complete -c eix -l print-world-sets -d 'Print the world sets'
complete -c eix -l print-profile-paths -d 'Print the profile paths'
complete -c eix -l 256 -d 'Print all ansi color palettes'
complete -c eix -l 256l -d 'Print light ansi color palettes'
complete -c eix -l 256l0 -d 'Print light ansi color palette (normal)'
complete -c eix -l 256l1 -d 'Print light ansi color palette (bright)'
complete -c eix -l 256d -d 'Print dark ansi color palettes'
complete -c eix -l 256d0 -d 'Print dark ansi color palette (normal)'
complete -c eix -l 256d1 -d 'Print dark ansi color palette (bright)'
complete -c eix -l 256b -d 'Print ansi color palette for background'
complete -c eix -s R -l remote -d 'Use remote database 1'
complete -c eix -s Z -l remote2 -d 'Use remote database 2'
complete -c eix -s x -l versionsort -d 'Sort output by slots/versions'
complete -c eix -s l -l versionlines -d 'Output versions line by line'
complete -c eix -s c -l compact -d 'Use $FORMAT_COMPACT'
complete -c eix -s v -l verbose -d 'Use $FORMAT_VERBOSE'
complete -c eix -l xml -d 'Output in xml format'
complete -c eix -s '*' -l pure-packages -d 'Omit printing of overlay names and package number'
complete -c eix -s '#' -l only-names -d 'Print with format <category>/<name>'
complete -c eix -s 0 -l brief -d 'Print at most one package'
complete -c eix -l brief2 -d 'Print at most two packages'
complete -c eix -s t -l test-non-matching -d 'Check /etc/portage/package.* and installed packages'
complete -c eix -l cache-file -r -F -d 'Use instead of default cache file'
complete -c eix -l format -r -d 'Format string'
complete -c eix -l format-compact -r -d 'Compact format string'
complete -c eix -l format-verbose -r -d 'Verbose format string'

# Logical operators
complete -c eix -s '!' -l not -d 'Logical negation'
complete -c eix -s a -l and -d 'Logical conjunction'
complete -c eix -s o -l or -d 'Logical disjunction'
complete -c eix -s '(' -l open -d 'Logical opening brace'
complete -c eix -s ')' -l close -d 'Logical closing brace'

# Package tests
complete -c eix -s I -l installed -d 'Test for installed packages'
complete -c eix -s i -l multi-installed -d 'Test for multiple installed packages'
complete -c eix -s d -l dup-packages -d 'Test for duplicate packages'
complete -c eix -s D -l dup-versions -d 'Test for duplicated versions'
complete -c eix -s 1 -l slotted -d 'Test for nontrivial slots'
complete -c eix -s 2 -l slots -d 'Test for multiple slots'
complete -c eix -s u -l upgrade -d 'Test for upgradable packages'
complete -c eix -l 'upgrade+' -d 'Test for upgradable packages, local'
complete -c eix -l 'upgrade-' -d 'Test for upgradable packages, non-local'
complete -c eix -l stable -d 'Test for stable packages'
complete -c eix -l 'stable+' -d 'Test for stable packages, local'
complete -c eix -l 'stable-' -d 'Test for stable packages, non-local'
complete -c eix -l testing -d 'Test for testing packages'
complete -c eix -l 'testing+' -d 'Test for testing packages, local'
complete -c eix -l 'testing-' -d 'Test for testing packages, non-local'
complete -c eix -l non-masked -d 'Test for non-masked packages'
complete -c eix -l 'non-masked+' -d 'Test for non-masked packages, local'
complete -c eix -l 'non-masked-' -d 'Test for non-masked packages, non-local'
complete -c eix -l system -d 'Test for @system packages'
complete -c eix -l 'system+' -d 'Test for @system packages, local'
complete -c eix -l 'system-' -d 'Test for @system packages, non-local'
complete -c eix -l installed-unstable -d 'Test for installed unstable packages'
complete -c eix -l installed-testing -d 'Test for installed testing packages'
complete -c eix -l installed-masked -d 'Test for installed masked packages'
complete -c eix -l world -d 'Test for @world packages'
complete -c eix -l world-file -d 'Test for @world-file packages'
complete -c eix -l world-set -d 'Test for @world-set packages'
complete -c eix -l selected -d 'Test for @selected packages'
complete -c eix -l selected-file -d 'Test for @selected-file packages'
complete -c eix -l selected-set -d 'Test for @selected-set packages'
complete -c eix -l binary -d 'Test for packages with .tbz2/.xpak'
complete -c eix -l multi-binary -r -d 'Test for at least NR of .tbz2/.xpak' -a '1 2 3 4 5 6 7 8 9'
complete -c eix -s O -l overlay -d 'Test if package is in an overlay'
complete -c eix -l in-overlay -r -d 'Test for packages in OVERLAY' -a '(__eix_get_overlays)'
complete -c eix -l only-in-overlay -r -d 'Test for packages only in OVERLAY' -a '(__eix_get_overlays)'
complete -c eix -s J -l installed-overlay -d 'Test if package is installed from an overlay'
complete -c eix -l installed-from-overlay -r -d 'Test for package installed from OVERLAY' -a '(__eix_get_overlays)'
complete -c eix -l installed-in-overlay -r -d 'Test for package installed and in OVERLAY' -a '(__eix_get_overlays)'
complete -c eix -l installed-in-some-overlay -d 'Test for package installed and in some overlay'

# RESTRICT tests
complete -c eix -l restrict-fetch -d 'Test for RESTRICT=fetch packages'
complete -c eix -l restrict-mirror -d 'Test for RESTRICT=mirror packages'
complete -c eix -l restrict-primaryuri -d 'Test for RESTRICT=primaryuri packages'
complete -c eix -l restrict-binchecks -d 'Test for RESTRICT=binchecks packages'
complete -c eix -l restrict-strip -d 'Test for RESTRICT=strip packages'
complete -c eix -l restrict-test -d 'Test for RESTRICT=test packages'
complete -c eix -l restrict-userpriv -d 'Test for RESTRICT=userpriv packages'
complete -c eix -l restrict-installsources -d 'Test for RESTRICT=installsources packages'
complete -c eix -l restrict-bindist -d 'Test for RESTRICT=bindist packages'
complete -c eix -l restrict-parallel -d 'Test for RESTRICT=parallel packages'

# PROPERTIES tests
complete -c eix -l properties-interactive -d 'Test for PROPERTIES=interactive packages'
complete -c eix -l properties-live -d 'Test for PROPERTIES=live packages'
complete -c eix -l properties-virtual -d 'Test for PROPERTIES=virtual packages'
complete -c eix -l properties-set -d 'Test for PROPERTIES=set packages'

# Other tests
complete -c eix -s T -l test-obsolete -d 'Test for packages with obsolete /etc/portage/package.*'
complete -c eix -s '|' -l pipe -d 'Test for packages/versions matching stdin'
complete -c eix -l pipe-name -d 'Test for packages matching stdin'
complete -c eix -l pipe-version -d 'Test for versions matching stdin'

# Search field options
complete -c eix -s s -l name -d 'Match name'
complete -c eix -s S -l description -d 'Match description'
complete -c eix -s C -l category -d 'Match category'
complete -c eix -s A -l category-name -d 'Match "category/name"'
complete -c eix -s H -l homepage -d 'Match homepage'
complete -c eix -s L -l license -d 'Match license'
complete -c eix -s U -l use -d 'Match IUSE'
complete -c eix -s y -l any -d 'Match any field (same as -SACsHL...)'
complete -c eix -l deps -d 'Match *DEPEND'
complete -c eix -l depend -d 'Match DEPEND'
complete -c eix -l rdepend -d 'Match RDEPEND'
complete -c eix -l pdepend -d 'Match PDEPEND'
complete -c eix -l bdepend -d 'Match BDEPEND'
complete -c eix -l idepend -d 'Match IDEPEND'
complete -c eix -l set -d 'Match setname'
complete -c eix -l eapi -d 'Match EAPI'
complete -c eix -l installed-eapi -d 'Match installed EAPI'
complete -c eix -l slot -d 'Match slotname'
complete -c eix -l installed-slot -d 'Match installed slotname'
complete -c eix -l installed-with-use -d 'Match installed enabled USE'
complete -c eix -l installed-without-use -d 'Match installed disabled USE'

# Pattern matching options
complete -c eix -s e -l exact -d 'Pattern is exact string'
complete -c eix -s b -l begin -d 'Pattern is beginning of string'
complete -c eix -l end -d 'Pattern is end of string'
complete -c eix -s z -l substring -d 'Pattern is substring'
complete -c eix -s f -l fuzzy -r -d 'Pattern is fuzzy, Levenshtein N' -a '1 2 3 4 5 6 7 8 9'
complete -c eix -s p -l pattern -d 'Pattern is wildcard pattern'
complete -c eix -s r -l regex -d 'Pattern is regular expression, ignoring case'
complete -c eix -l regex-case -d 'Pattern is regular expression, using case'

# Package name completion for eix (context-sensitive)
complete -c eix -x -a '(__eix_get_packages)'
complete -c eix -n '__fish_seen_subcommand_from -I --installed -i --multi-installed' -x -a '(__eix_get_packages installed)'

# Category completion
complete -c eix -n '__fish_seen_subcommand_from -C --category' -x -a '(__eix_get_categories)'
complete -c eix -n '__fish_seen_subcommand_from -C --category -I --installed' -x -a '(__eix_get_categories installed)'

# Package name completion
complete -c eix -n '__fish_seen_subcommand_from -s --name' -x -a '(__eix_get_names)'
complete -c eix -n '__fish_seen_subcommand_from -s --name -I --installed' -x -a '(__eix_get_names installed)'

# USE flag completion
complete -c eix -n '__fish_seen_subcommand_from -U --use --installed-with-use --installed-without-use' -x -a '(__eix_get_useflags)'

# License completion
complete -c eix -n '__fish_seen_subcommand_from -L --license' -x -a '(__eix_get_licenses)'

# Slot completion
complete -c eix -n '__fish_seen_subcommand_from --slot --installed-slot' -x -a '(__eix_get_slots)'

# Set completion
complete -c eix -n '__fish_seen_subcommand_from --set' -x -a '(__eix_get_sets)'

# Overlay completion
complete -c eix -n '__fish_seen_subcommand_from --in-overlay --only-in-overlay --installed-from-overlay --installed-in-overlay' -x -a '(__eix_get_overlays)'
