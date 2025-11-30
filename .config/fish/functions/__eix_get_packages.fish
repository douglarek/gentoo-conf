function __eix_get_packages -d "Get packages from eix"
    set -l opts --pure-packages --format '<category>/<name>\n'
    if test "$argv[1]" = "installed"
        set opts $opts -I
    end
    eix $opts 2>/dev/null
end
