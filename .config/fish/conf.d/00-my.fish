# https://www.reddit.com/r/fishshell/comments/19bf195/where_do_you_set_your_environment_variables/
# fisher: curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
# tide: fisher install IlanCosman/tide@v6
# tide configure --auto --style=Lean --prompt_colors='True color' --show_time=No --lean_prompt_height='One line' --prompt_spacing=Compact --icons='Few icons' --transient=Yes

# global env
set fish_greeting
set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
set -gx LANGUAGE en_US.UTF-8
set -gx GPG_TTY $TTY
set -gx TMOUT 0

# add go bin path
if type -q go
    if set gopath (go env GOPATH 2>/dev/null)
        if test -n "$gopath"
            set -gx PATH "$gopath/bin" $PATH
        end
    end
end

# alias
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
if type -q vim
    alias vim='vim'
else if type -q nvim
    alias vim='nvim'
end
## emerge alias
alias eworld='sudo emerge -avuDU @world'
alias eworldb='sudo emerge -avuDU --with-bdeps=y @world'
alias eworld!='sudo emerge -vuDU @world'
alias esync='sudo emerge --sync'
alias etime='emerge -pvuDU @world | genlop -p'
alias epurge='emerge -pc; eclean -pd distfiles; eclean -pd packages'
alias epurge!='sudo emerge -c; sudo eclean -d distfiles; sudo eclean -d packages'

# https://wiki.gentoo.org/wiki/Node.js
set -gx NPM_CONFIG_PREFIX "$HOME/.local/nodejs"
set -gx PATH "$NPM_CONFIG_PREFIX/bin" $PATH

# bun.js
set -gx BUN_INSTALL "$HOME/.bun"
set -gx PATH "$BUN_INSTALL/bin" $PATH

## aws bedrock
set -gx AWS_PROFILE default
