function __eix_get_useflags -d "Get USE flags from eix"
    eix --print-all-useflags 2>/dev/null | sed 's/^[()+-]*//g'
end
