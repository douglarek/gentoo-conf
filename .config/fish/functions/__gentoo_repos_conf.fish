function __gentoo_repos_conf -d "Get repository names from repos.conf"
    # Get all repository names from portage configuration
    portageq repos_config / 2>/dev/null | grep -E '^\[.*\]$' | tr -d '[]' | grep -v '^DEFAULT$'
end
