# Completion for repoman

# Options
complete -c repoman -l force -d 'Force commit to proceed, regardless of QA issues'
complete -c repoman -s q -l quiet -d 'Be less verbose about extraneous info'
complete -c repoman -s p -l pretend -d "Don't commit or fix anything; just show what would be done"
complete -c repoman -s i -l include-masked -d 'Include masked packages in scans'
complete -c repoman -s x -l xmlparse -d 'Force metadata.xml parse check'
complete -c repoman -s v -l verbose -d 'Display every package name while checking'
complete -c repoman -s I -l ignore-arches -d 'Ignore arch-specific failures (where arch != host)'
complete -c repoman -s m -l commitmsg -d 'Add commit message via command line' -x
complete -c repoman -s M -l commitmsgfile -d 'Add commit message from file' -r -F
complete -c repoman -s V -l version -d 'Show version info'
complete -c repoman -s h -l help -d 'Show help screen'

# Actions (only show if no action already specified and not in option mode)
complete -c repoman -n 'not __fish_seen_subcommand_from full last help scan fix lfull manifest commit; and not __fish_seen_subcommand_from -h -V -m -M --version --help --commitmsg --commitmsgfile' -xa 'full' -d 'Scan directory tree for QA issues (full listing)'
complete -c repoman -n 'not __fish_seen_subcommand_from full last help scan fix lfull manifest commit; and not __fish_seen_subcommand_from -h -V -m -M --version --help --commitmsg --commitmsgfile' -xa 'last' -d 'Remember report from last run'
complete -c repoman -n 'not __fish_seen_subcommand_from full last help scan fix lfull manifest commit; and not __fish_seen_subcommand_from -h -V -m -M --version --help --commitmsg --commitmsgfile' -xa 'help' -d 'Show help screen'
complete -c repoman -n 'not __fish_seen_subcommand_from full last help scan fix lfull manifest commit; and not __fish_seen_subcommand_from -h -V -m -M --version --help --commitmsg --commitmsgfile' -xa 'scan' -d 'Scan directory tree for QA issues (short listing)'
complete -c repoman -n 'not __fish_seen_subcommand_from full last help scan fix lfull manifest commit; and not __fish_seen_subcommand_from -h -V -m -M --version --help --commitmsg --commitmsgfile' -xa 'fix' -d 'Fix simple QA issues (stray digests, missing digests)'
complete -c repoman -n 'not __fish_seen_subcommand_from full last help scan fix lfull manifest commit; and not __fish_seen_subcommand_from -h -V -m -M --version --help --commitmsg --commitmsgfile' -xa 'lfull' -d 'Remember report from last run (full listing)'
complete -c repoman -n 'not __fish_seen_subcommand_from full last help scan fix lfull manifest commit; and not __fish_seen_subcommand_from -h -V -m -M --version --help --commitmsg --commitmsgfile' -xa 'manifest' -d 'Generate Manifest (fetches files if necessary)'
complete -c repoman -n 'not __fish_seen_subcommand_from full last help scan fix lfull manifest commit; and not __fish_seen_subcommand_from -h -V -m -M --version --help --commitmsg --commitmsgfile' -xa 'commit' -d 'Scan for QA issues; if OK, commit via cvs'
