# Completion for eix-test-obsolete (eix tools)
# Test for obsolete packages

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
