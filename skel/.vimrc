syntax on
set ts=3 sts=3 sw=3                " Set all tab varieties to 3
set autoindent                     " Current line's indent sets next line's
set smartindent                    " Guess indent level for Coding purposes

set incsearch                      " Searches for word as you type the chars
set hlsearch                       " Highlight the pattern last searched
set ignorecase                     " Ignore case in search patterns

set t_Co=256                       " Fix vim changing colors on first key press

set list
set listchars=tab:>-,trail:·       " Show special chars for these events
highlight SpecialKey ctermfg=8     " Set tab and trail color

" Change the background color past 80 characters
set textwidth=80
let &colorcolumn=join(range(81,250),",")
highlight ColorColumn ctermbg=235

