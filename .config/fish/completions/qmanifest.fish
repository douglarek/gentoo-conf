# Completion for qmanifest (portage-utils)
# Manifest generation and verification

# Common options
complete -c qmanifest -l root -d 'Set the ROOT env var' -r -F
complete -c qmanifest -s v -l verbose -d 'Make a lot of noise'
complete -c qmanifest -s q -l quiet -d 'Tighter output; suppress warnings'
complete -c qmanifest -s C -l nocolor -d 'Do not output color'
complete -c qmanifest -s h -l help -d 'Print this help and exit'
complete -c qmanifest -s V -l version -d 'Print version and exit'

# qmanifest specific options
complete -c qmanifest -s g -l generate -d 'Generate thick Manifests'
complete -c qmanifest -s s -l signas -d 'Sign generated Manifest using GPG key' -x
complete -c qmanifest -s p -l passphrase -d 'Ask for GPG key password'
complete -c qmanifest -s d -l dir -d 'Treat arguments as directories' -r -F
complete -c qmanifest -s o -l overlay -d 'Treat arguments as overlay names' -x

# Overlay name completion for -o option
complete -c qmanifest -n '__fish_seen_subcommand_from -o --overlay' -f -a '(__fish_gentoo_repos_overlay)'
