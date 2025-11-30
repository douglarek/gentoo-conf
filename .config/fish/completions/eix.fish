# Completion for eix (eix tools)
# Search and query packages

# Common options
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

# Print options
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

# Output options
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

# Package name completion (context-sensitive)
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
