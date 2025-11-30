function __gentoo_packages_available -d "Get available package names"
    # Fast version: only package names, no category
    set -l repos (__gentoo_repos)
    for repo in $repos
        set -l repo_path (portageq get_repo_path / $repo 2>/dev/null)
        test -d "$repo_path"; or continue
        find "$repo_path" -mindepth 2 -maxdepth 2 -type d -printf '%f\n'
    end | sort -u
end
