function __eix_get_var -d "Get eix variable value"
    eix --print $argv[1] 2>/dev/null
end
