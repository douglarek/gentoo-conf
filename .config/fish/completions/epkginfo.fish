# Completion for epkginfo (package metadata information tool)

complete -c epkginfo -s h -l help -d 'Display help and exit'
complete -c epkginfo -s d -l description -d 'Show extended package description'
complete -c epkginfo -s H -l herd -d 'Show herd(s) for package'
complete -c epkginfo -s k -l keywords -d 'Show keywords for all matching versions'
complete -c epkginfo -s l -l license -d 'Show licenses for best matching version'
complete -c epkginfo -s m -l maintainer -d 'Show maintainer(s) for package'
complete -c epkginfo -s S -l stablreq -d 'Show STABLEREQ arches for all matching versions'
complete -c epkginfo -s u -l useflags -d 'Show per-package USE flag descriptions'
complete -c epkginfo -s U -l upstream -d "Show package's upstream information"
complete -c epkginfo -s x -l xml -d 'Show plain metadata.xml file'

# Package completion
complete -c epkginfo -f -a '(__gentoo_packages_available)'
