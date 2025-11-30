# Completion for eix-installed-after (eix tools)
# Show packages installed after a given package

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

# Package completion
complete -c eix-installed-after -x -a '(__eix_get_packages installed)'
