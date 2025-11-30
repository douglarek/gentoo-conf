# Completion for ebuild

# Common options
complete -c ebuild -l skip-manifest -d 'Skip all manifest checks'
complete -c ebuild -l debug -d 'Run bash with the -x option'
complete -c ebuild -l color -d 'Enable or disable color output' -xa 'y n'
complete -c ebuild -l ignore-default-opts -d 'Ignore $EBUILD_DEFAULT_OPTS'
complete -c ebuild -l force -d 'Force regeneration of distfiles with digest/manifest'

# Ebuild file completion
complete -c ebuild -n '__fish_is_first_arg' -f -a '*.ebuild'

# Ebuild commands
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'clean' -d 'Clean the temporary build directory'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'help' -d 'Show help'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'setup' -d 'Run package specific setup actions'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'fetch' -d 'Fetch all necessary files'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'digest' -d 'Create a digest file for the package'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'unpack' -d 'Extract sources to build directory'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'prepare' -d 'Prepare extracted sources (src_prepare)'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'configure' -d 'Configure extracted sources (src_configure)'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'compile' -d 'Compile extracted sources (src_compile)'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'test' -d 'Run package-specific test cases'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'preinst' -d 'Run actions before installation'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'install' -d 'Install package to temporary directory'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'postinst' -d 'Run actions after installation'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'qmerge' -d 'Install package to filesystem'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'merge' -d 'Perform fetch, unpack, compile, install, qmerge'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'unmerge' -d 'Remove installed files of package'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'prerm' -d 'Run actions before unmerge'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'postrm' -d 'Run actions after unmerge'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'config' -d 'Run post-emerge configuration actions'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'package' -d 'Like merge, but create .tbz2 package'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'manifest' -d 'Update manifest file for package'
complete -c ebuild -n 'not __fish_is_first_arg' -xa 'rpm' -d 'Build a RedHat RPM package'
