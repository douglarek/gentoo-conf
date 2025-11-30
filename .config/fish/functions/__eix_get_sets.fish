function __eix_get_sets -d "Get sets from eix"
    set -l portdir (__eix_get_var PORTDIR)
    set -l overlays (__eix_get_var PORTDIR_OVERLAY | string split ' ')
    set -l local_sets (__eix_get_var EIX_LOCAL_SETS | string split ' ')

    for setdir in $local_sets
        if test -d "$setdir"
            find -L "$setdir" -type f -name '[!.]*' -printf '%f\n' 2>/dev/null
        end
    end
end
