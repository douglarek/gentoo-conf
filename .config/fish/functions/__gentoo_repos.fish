function __gentoo_repos -d "Get all repository names"
    portageq get_repos / 2>/dev/null | string split ' '
end
