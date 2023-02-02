" Brief help for https://github.com/VundleVim/Vundle.vim
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage itself
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'prettier/vim-prettier'
Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Non-Vundle stuff below.

syntax on

set ts=2 sts=2 sw=2                  " Set all tab varieties to 2
set autoindent                       " Current line's indent sets next line's
set smartindent                      " Guess indent level for Coding purposes
set expandtab                        " Replaces tabs with spaces
set nojoinspaces                     " Insert only one space after punctuation
set textwidth=0                      " Prevent breaking for newlines

set incsearch                        " Searches for word as you type the chars
set hlsearch                         " Highlight the pattern last searched
set ignorecase                       " Ignore case in search patterns

set t_Co=256                         " Enable 256 colors in vim

set list
set listchars=tab:>-,trail:·,nbsp:Ǿ  " Show special chars for these events

highlight SpecialKey ctermfg=160            " Set tab and trail color
highlight Pmenu ctermbg=gray ctermfg=232    " Set menu color
highlight PmenuSel ctermbg=195 ctermfg=232  " Set menu color

let &colorcolumn=join(range(81,250),",")
autocmd FileType java let &colorcolumn=join(range(101,250),",")
autocmd FileType soy let &colorcolumn=join(range(101,250),",")
autocmd FileType sql let &colorcolumn=join(range(101,250),",")
highlight ColorColumn ctermbg=253

set number                           " Show line numbers
set mouse=a                          " Enable visual mode during mouse copy
set clipboard=unnamed                " Allow yank/paste between vim sessions
set laststatus=2                     " Always show the status line (filename)

set tabpagemax=100                   " Bumps up the max number of tabs opened
tab all                              " Open all files in arg list in tabs
noremap <F3> gT                      " Map G3 to <-tab
inoremap <F3> gT                     " Map G3 to <-tab in insert mode
noremap <F4> gt                      " Map G4 to tab->
inoremap <F4> gt                     " Map G4 to tab-> in insert mode

highlight Search ctermbg=190 ctermfg=16

" Highlight for spelling errors. Add words to spell file with 'zg'.
set spell spelllang=en_us
highlight clear SpellCap
highlight clear SpellRare
highlight clear SpellLocal
highlight clear SpellBad
highlight SpellBad ctermfg=16 ctermbg=189 cterm=underline

" Highlight some of my common fuck ups.
highlight BadJava ctermfg=16 ctermbg=9
highlight BadJs ctermfg=16 ctermbg=9
highlight BadSoy ctermfg=16 ctermbg=9
autocmd FileType java match BadJava /Optional.of()\|ImmutableList.empty()\|== "/
" ban common typos around incorrect import and for ... in ... loops for arrays
autocmd FileType javascript match BadJs /(.* in .*)/
autocmd FileType soy match BadSoy /: text\|: boolean/

" Prettier configs
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Change default swap file location. Must create the ~/.vim/swap dir first.
set directory=$HOME/.vim/swap//
