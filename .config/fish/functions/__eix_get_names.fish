function __eix_get_names -d "Get package names from eix"
    set -l opts --pure-packages --format '<name>\n'
    if test "$argv[1]" = "installed"
        set opts $opts -I
    end
    eix $opts 2>/dev/null
end
