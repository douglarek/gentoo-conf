function __fish_gentoo_arches -d "Get list of Gentoo architectures from arch.list"
    set -l main_repo (__fish_gentoo_repos_main)
    if test -f "$main_repo/profiles/arch.list"
        grep -v '^#' "$main_repo/profiles/arch.list" | grep -v '^$'
    end
end
