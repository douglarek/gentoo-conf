function __gentoo_repos_main -d "Get main Gentoo repository path"
    portageq get_repo_path / gentoo 2>/dev/null
end
