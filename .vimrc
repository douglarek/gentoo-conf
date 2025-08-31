filetype plugin indent on

packadd! comment
packadd! hlyank
packadd! matchit

set errorbells visualbell
set incsearch
set showcmd
syntax on

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" What's the simplest way to strip trailing whitespace from all lines in a file?
" https://vi.stackexchange.com/a/456
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
" command! TrimWhitespace call TrimWhitespace()
autocmd BufWritePre * if !&binary | call TrimWhitespace() | endif

" always use decimal not octal
set nrformats=
