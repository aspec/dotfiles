" Initialize
" --------------------------------------------------------
set nocompatible
filetype plugin on
filetype indent on
set nobackup
set noerrorbells

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Fix backspace indent
set backspace=indent,eol,start

" Searching
set incsearch
set ignorecase
set smartcase
set showmatch
set hlsearch

" Commands
set showcmd
set history=1000

" Packages
"-----------------------------------
packadd! everforest

" Colorscheme
"-----------------------------------
if has('gui_running')
    set background=light
else
    set background=dark
endif

let g:everforest_background = 'medium'
let g:everforest_better_performance = 1

"let g:everforest_diagnostic_text_highlight = 1
colorscheme everforest

" GUI
" -----------------------------------
syntax on
syntax enable
set number
set rnu
set t_Co=256
set novisualbell

if has('gui_running')
    if has('gui_mac') || has('gui_macvim')
        set guifont=Inconsolata-Nerd-for-Powerline;h13
        set transparency=7
    endif
else
    let g:CSApprox_loaded = 1
endif

" Tabs
"-----------------------------------
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab
set lbr
set tw=500
set ai
set si
set wrap

" Language settings
"-----------------------------------
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
au FileType sh setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4

" Keymappings
"-----------------------------------
nnoremap n nzzzv
nnoremap N Nzzzv
map <space> /
map <C-space> ?
let mapleader=','
set backspace=eol,start,indent
set whichwrap+=<,>

" Plug-ins
"-----------------------------------
" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'everforest'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" Airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Functions
"-----------------------------------
" Whitespace Clearer
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Visualize 80th column
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif
