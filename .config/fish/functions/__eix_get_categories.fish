function __eix_get_categories -d "Get categories from eix"
    set -l opts --pure-packages --format '<category>\n'
    if test "$argv[1]" = "installed"
        set opts $opts -I
    end
    eix $opts 2>/dev/null
end
