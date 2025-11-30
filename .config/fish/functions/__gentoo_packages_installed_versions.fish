function __gentoo_packages_installed_versions -d "Get installed package names with versions"
    # Output: category/package-version
    find /var/db/pkg -mindepth 2 -maxdepth 2 -type d -printf '%P\n' | sort
end
