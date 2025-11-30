function __eix_get_overlays -d "Get overlays from eix"
    set -l overlays (__eix_get_var PORTDIR_OVERLAY | string split ' ')
    set overlays $overlays (__eix_get_var PORTDIR)
    for i in (seq (count $overlays))
        echo $i
    end
    printf '%s\n' $overlays
end
