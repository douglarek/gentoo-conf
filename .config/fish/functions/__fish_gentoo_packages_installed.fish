function __fish_gentoo_packages_installed -d "Get installed package names (without version)"
    # Fast version: only package names, no category
    # Use basename and sed in a single pipe for speed
    find /var/db/pkg -mindepth 2 -maxdepth 2 -type d -printf '%f\n' | sed 's/-[0-9].*//' | sort -u
end
