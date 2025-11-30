function __fish_gentoo_repos_overlay -d "Get overlay repository names (non-main repos)"
    set -l all_repos (portageq get_repos / 2>/dev/null | string split ' ')
    for repo in $all_repos
        if test "$repo" != "gentoo"
            echo $repo
        end
    end
end
