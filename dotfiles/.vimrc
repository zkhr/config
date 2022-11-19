set nocompatible                   " Enable modern Vim features not compatible with Vi spec.

syntax on
set ts=2 sts=2 sw=2                " Set all tab varieties to 2
set autoindent                     " Current line's indent sets next line's
set smartindent                    " Guess indent level for Coding purposes
set expandtab                      " Replace tabs with spaces

set incsearch                      " Searches for word as you type the chars
set hlsearch                       " Highlight the pattern last searched
set ignorecase                     " Ignore case in search patterns

set t_Co=256                       " Enable 256 colors in vim

set list
set listchars=tab:>-,trail:·,nbsp:Ǿ  " Show special chars for these events
highlight SpecialKey ctermfg=252     " Set tab and trail color

set number

" Change the background color past 80 characters
let &colorcolumn=join(range(81,250),",")
highlight ColorColumn ctermbg=188
set wildmenu

" Allow yank/paste between vim sessions. Requires clipboard-enabled version of
" vim (e.g. gvim package for Arch Linux).
set clipboard=unnamedplus

set laststatus=2                   " Always show the status line (filename)
set tabpagemax=100                 " Bumps up the max number of tabs opened
tab all                            " Open all files in arg list in tabs

highlight Search ctermbg=228 ctermfg=233
