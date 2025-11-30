# Completion for emerge (Gentoo package manager)

# Common options
complete -c emerge -s h -l help -d 'Display help'
complete -c emerge -s V -l version -d 'Display version info'
complete -c emerge -s p -l pretend -d 'Simply display what would be done'
complete -c emerge -s a -l ask -d 'Ask what would be done'
complete -c emerge -s d -l debug -d 'Run in debug mode'
complete -c emerge -s q -l quiet -d 'Reduced or condensed output'
complete -c emerge -s v -l verbose -d 'Run in verbose mode'
complete -c emerge -l nospinner -d 'Disable the spinner for the session'
complete -c emerge -l color -d 'Color output' -xa 'y n'
complete -c emerge -l accept-properties -d 'Temporarily override ACCEPT_PROPERTIES' -x
complete -c emerge -l accept-restrict -d 'Temporarily override ACCEPT_RESTRICT' -x
complete -c emerge -s A -l alert -d 'Add terminal bell to interactive prompts'
complete -c emerge -l ignore-default-opts -d 'Ignore EMERGE_DEFAULT_OPTS'
complete -c emerge -l moo -d 'Have you mooed today?'
complete -c emerge -l jobs -d 'Number of packages to build simultaneously' -x

# Action options
complete -c emerge -l config -d 'Run package specific post-emerge actions' -f -a '(__gentoo_packages_installed)'
complete -c emerge -l list-sets -d 'Display list of available package sets'
complete -c emerge -l deselect -d 'Remove atom from world file'

# Update/install options
complete -c emerge -s u -l update -d 'Update packages to most recent version'
complete -c emerge -s D -l deep -d 'Consider entire dependency tree'
complete -c emerge -s N -l newuse -d 'Include packages with changed USE flags'
complete -c emerge -s U -l changed-use -d 'Include packages with changed enabled USE flags'
complete -c emerge -s 1 -l oneshot -d 'Do not add package to world profile'
complete -c emerge -s w -l select -d 'Add packages to world set'
complete -c emerge -s n -l noreplace -d 'Skip packages already installed'
complete -c emerge -s O -l nodeps -d 'Merge without merging dependencies'
complete -c emerge -s o -l onlydeps -d 'Only merge dependencies'
complete -c emerge -l onlydeps-with-rdeps -d 'Include runtime deps with --onlydeps' -xa 'y n'
complete -c emerge -s t -l tree -d 'Show dependency tree'
complete -c emerge -l columns -d 'Display versions in aligned format'
complete -c emerge -s e -l emptytree -d 'Only consider glibc as installed'
complete -c emerge -l noconfmem -d 'Disregard merge records'

# Binary package options
complete -c emerge -s b -l buildpkg -d 'Build binary packages'
complete -c emerge -s B -l buildpkgonly -d 'Only build binary packages'
complete -c emerge -s g -l getbinpkg -d 'Download binary packages'
complete -c emerge -s G -l getbinpkgonly -d 'Only use remote binary packages'
complete -c emerge -s k -l usepkg -d 'Use binary packages if available'
complete -c emerge -s K -l usepkgonly -d 'Only use binary packages'
complete -c emerge -l buildpkg-exclude -d 'Packages to exclude from binary build' -x
complete -c emerge -l exclude -d 'Packages to not install' -x
complete -c emerge -l usepkg-exclude -d 'Ignore matching binary packages' -f -a '(__gentoo_packages_installed)'
complete -c emerge -l binpkg-changed-deps -d 'Ignore binpkgs with changed deps' -xa 'y n'
complete -c emerge -l binpkg-respect-use -d 'Ignore binpkgs with mismatched USE' -xa 'y n'
complete -c emerge -l rebuilt-binaries -d 'Replace with rebuilt binary packages'
complete -c emerge -l rebuilt-binaries-timestamp -d 'Only binaries older than TIMESTAMP' -x
complete -c emerge -l useoldpkg-atoms -d 'Prefer matching binpkgs over newer ebuilds' -f -a '(__gentoo_packages_available)'
complete -c emerge -l quickpkg-direct -d 'Use installed packages as binary packages' -xa 'y n'
complete -c emerge -l pkg-format -d 'Binary package format' -xa 'tar rpm'

# Fetch options
complete -c emerge -s f -l fetchonly -d 'Just perform fetches for all packages'
complete -c emerge -s F -l fetch-all-uri -d 'Fetch all possible files'
complete -c emerge -l digest -d 'Prevent corruption from being noticed'

# Clean/remove options
complete -c emerge -s c -l depclean -d 'Clean packages with no reason for being installed'
complete -c emerge -s C -l unmerge -d 'Remove all matching packages'
complete -c emerge -s P -l prune -d 'Remove all but latest versions'
complete -c emerge -l clean -d 'Clean system by removing packages'
complete -c emerge -l rage-clean -d 'Unmerge with CLEAN_DELAY=0'
complete -c emerge -l depclean-lib-check -d 'Check library link-level dependencies'

# Search options
complete -c emerge -s s -l search -d 'Search for matches'
complete -c emerge -s S -l searchdesc -d 'Search descriptions'
complete -c emerge -l search-index -d 'Enable or disable indexed search' -xa 'y n'
complete -c emerge -l search-similarity -d 'Set minimum similarity percentage' -x
complete -c emerge -l fuzzy-search -d 'Enable or disable fuzzy search' -xa 'y n'

# Info/display options
complete -c emerge -l info -d 'List information for bug reports'
complete -c emerge -l changelog -s l -d 'Show the ChangeLog'
complete -c emerge -l alphabetical -d 'Sort flags alphabetically'

# Resume options
complete -c emerge -l resume -d 'Resume last merge operation'
complete -c emerge -l skipfirst -d 'Remove first package in resume list'

# Sync/update options
complete -c emerge -l sync -d 'Initiate portage tree update'
complete -c emerge -l metadata -d 'Generate metadata'
complete -c emerge -l regen -d 'Check and update dependency cache'
complete -c emerge -l check-news -d 'Scan for unread GLEP 42 news items'

# Advanced options
complete -c emerge -s i -l inject -d 'Pretend package is installed'
complete -c emerge -l selective -d 'Use selective mode' -xa 'y n'
complete -c emerge -l keep-going -d 'Continue merge even if package fails'
complete -c emerge -l fail-clean -d 'Clean up temporary files after build failure'
complete -c emerge -l autounmask -d 'Automatically unmask packages'
complete -c emerge -l autounmask-unrestricted-atoms -d 'Use >= for autounmask if possible'
complete -c emerge -l autounmask-keep-masks -d 'Do not unmask hardmasks and unkeyworded'
complete -c emerge -l autounmask-write -d 'Automatically write autounmask changes'
complete -c emerge -l ask-enter-invalid -d 'Interpret Enter as invalid input with --ask'
complete -c emerge -l backtrack -d 'Number of times to backtrack' -xa '0 10 30'
complete -c emerge -l changed-deps -d 'Replace packages with changed dependencies'
complete -c emerge -l complete-graph -d 'Consider deep deps of world set' -xa 'y n'
complete -c emerge -l complete-graph-if-new-use -d 'Complete graph if USE changed' -xa 'y n'
complete -c emerge -l complete-graph-if-new-ver -d 'Complete graph if version changed' -xa 'y n'
complete -c emerge -l config-root -d 'Set PORTAGE_CONFIGROOT' -r -F
complete -c emerge -l dynamic-deps -d 'Substitute installed package deps' -xa 'y n'
complete -c emerge -l ignore-built-slot-operator-deps -d 'Ignore slot/sub-slot deps' -xa 'y n'
complete -c emerge -l ignore-soname-deps -d 'Ignore soname dependencies' -xa 'y n'
complete -c emerge -l ignore-world -d 'Ignore @world package set'
complete -c emerge -l implicit-system-deps -d 'Assume implicit @system deps'
complete -c emerge -l load-average -d 'Load average threshold for new builds' -x
complete -c emerge -l misspell-suggestions -d 'Enable misspell suggestions' -xa 'y n'
complete -c emerge -l newrepo -d 'Recompile if from different repository'
complete -c emerge -l rebuild-exclude -d 'Do not rebuild on --rebuild' -f -a '(__gentoo_packages_installed)'
complete -c emerge -l rebuild-ignore -d 'Do not rebuild deps on --rebuild' -f -a '(__gentoo_packages_installed)'
complete -c emerge -l package-moves -d 'Perform package moves when necessary'
complete -c emerge -l prefix -d 'Set EPREFIX' -r -F
complete -c emerge -l quiet-build -d 'Redirect build output to logs'
complete -c emerge -l quiet-fail -d 'Suppress build log on stdout'
complete -c emerge -l quiet-repo-display -d 'Suppress ::repository in output'
complete -c emerge -l quiet-unmerge-warn -d 'Disable warning on --unmerge'
complete -c emerge -l rebuild-if-new-slot -d 'Rebuild when deps satisfy newer slot'
complete -c emerge -l rebuild-if-new-rev -d 'Rebuild when build deps have new revision'
complete -c emerge -l rebuild-if-new-ver -d 'Rebuild when build deps have new version'
complete -c emerge -l rebuild-if-unbuilt -d 'Rebuild when build deps are from source'
complete -c emerge -l reinstall -d 'Alias for --changed-use' -xa 'changes-use'
complete -c emerge -l reinstall-atoms -d 'Treat packages as not installed' -f -a '(__gentoo_packages_installed)'
complete -c emerge -l root -d 'Set ROOT' -r -F
complete -c emerge -l unordered-display -d 'More readable package tree with --tree'
complete -c emerge -l use-ebuild-visibility -d 'Use unbuilt ebuild metadata for visibility'
complete -c emerge -l with-bdeps -d 'Pull in build time dependencies' -xa 'y n'
complete -c emerge -l with-test-deps -d 'Pull in test dependencies' -xa 'y n'

# Package sets
complete -c emerge -xa 'world' -d 'All packages in world profile'
complete -c emerge -xa 'system' -d 'All packages in system profile'

# Package name completion - context-sensitive
# For unmerge/depclean/prune operations, complete installed packages
complete -c emerge -n '__fish_seen_subcommand_from -C --unmerge -c --depclean -P --prune' -f -a '(__gentoo_packages_installed)'

# For regular emerge, complete available packages
complete -c emerge -n 'not __fish_seen_subcommand_from -C --unmerge -c --depclean -P --prune --sync --metadata --regen --info --help --version --list-sets --check-news' -f -a '(__gentoo_packages_available)'
