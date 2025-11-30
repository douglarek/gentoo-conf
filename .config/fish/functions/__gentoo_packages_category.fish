function __gentoo_packages_category -d "Get category names"
    set -l main_repo (__gentoo_repos_main)
    if test -d $main_repo
        for cat in $main_repo/*-*
            test -d $cat; and echo (basename $cat)
        end
    end | sort -u
end
