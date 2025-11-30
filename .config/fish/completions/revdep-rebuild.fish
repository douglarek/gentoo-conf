# Completion for revdep-rebuild (reverse dependency rebuilder)

complete -c revdep-rebuild -s C -l nocolor -d 'Turn off colored output'
complete -c revdep-rebuild -s d -l debug -d 'Print way too much information (bash set -xv)'
complete -c revdep-rebuild -s e -l exact -d 'Emerge based on exact package version'
complete -c revdep-rebuild -s h -l help -d 'Print help'
complete -c revdep-rebuild -s i -l ignore -d 'Ignore temporary files from previous runs'
complete -c revdep-rebuild -s k -l keep-temp -d 'Do not delete temporary files on exit'
complete -c revdep-rebuild -s L -l library -d 'Emerge existing packages that use library with NAME' -r -F
complete -c revdep-rebuild -s l -l no-ld-path -d 'Do not set LD_LIBRARY_PATH'
complete -c revdep-rebuild -s o -l no-order -d 'Do not check build order (saves time, may cause breakage)'
complete -c revdep-rebuild -s p -l pretend -d 'Trial run without emerging (also passed to emerge)'
complete -c revdep-rebuild -s P -l no-progress -d 'Turn off progress meter'
complete -c revdep-rebuild -s q -l quiet -d 'Be less verbose (also passed to emerge)'
complete -c revdep-rebuild -s v -l verbose -d 'Be more verbose (also passed to emerge)'
