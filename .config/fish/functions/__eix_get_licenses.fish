function __eix_get_licenses -d "Get licenses from eix"
    eix --print-all-licenses 2>/dev/null | sed 's/[()| ]//g'
end
