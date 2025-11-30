function __fish_gentoo_packages_useflag -d "Get USE flags"
    set -l repos (__fish_gentoo_repos)

    for repo in $repos
        set -l repo_path (portageq get_repo_path / $repo 2>/dev/null)

        # Read use.desc
        if test -f "$repo_path/profiles/use.desc"
            grep -v '^#' "$repo_path/profiles/use.desc" | sed -n 's/ - .*//p'
        end

        # Read use.local.desc
        if test -f "$repo_path/profiles/use.local.desc"
            grep -v '^#' "$repo_path/profiles/use.local.desc" | sed -n 's/.*:\(.*\) - .*/\1/p'
        end
    end | sort -u
end
