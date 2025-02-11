" Initialize {{{
set nocompatible
filetype plugin indent on
syntax on
syntax enable
set nobackup
" }}}

" Formatting {{{

" Encoding {{{
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set backspace=indent,eol,start
" }}}

" Tabs {{{
set history=1000
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab
" }}}

" Miscellaneous {{{
set linebreak
set tw=500
set autoindent
set smartindent
set wrap
" }}}

" }}}

" Language settings {{{
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
au FileType sh setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
" }}}

" Keymappings {{{
nnoremap n nzzzv
nnoremap N Nzzzv
map <C-space> ?
let mapleader=','
set backspace=eol,start,indent
set whichwrap+=<,>
" }}}

" Search {{{
set incsearch
set ignorecase
set smartcase
set showmatch
" }}}

" Packages {{{
packadd! everforest
" }}}

" UI {{{
set number
set relativenumber
set t_Co=256
set novisualbell
set noerrorbells
set gfn=InconsolotaNFM-Regular:h18
" }}}

" Colorscheme {{{
if has('gui_running')
    set background=light
else
    set background=dark
endif

let g:everforest_background = 'medium'
let g:everforest_better_performance = 1
let g:everforest_diagnostic_text_highlight = 1

colorscheme everforest
" }}}

" Plug-ins {{{

" Airline {{{
let g:airline_powerline_fonts = 1
let g:airline_theme = 'everforest'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" }}}

" Unicode symbols {{{
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
" }}}

" Airline symbols {{{
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" }}}

" NERDTree {{{
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" }}}

" Functions {{{

" Whitespace Clearer {{{
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun
" }}}

" Highlight trailing whitespace {{{
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
" }}}

" Visualize 80th column {{{
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif
" }}}

" }}}

" }}}

" vim:foldmethod=marker:foldlevel=0
