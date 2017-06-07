" Startup {{{
set nocompatible
execute pathogen#infect()
filetype plugin indent on
syntax on
" }}}

" Search {{{
set smartcase
set ignorecase
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>
" }}}

" Formatting {{{
set wrap
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smartindent
set encoding=utf-8
set virtualedit=onemore
set backspace=indent,eol,start
" }}}

" UI {{{
set number
set relativenumber
set showcmd
set showmode
set showmatch
set hidden
set cursorline
set ruler
set visualbell
set modeline
set ttyfast
set scrolloff=3
set modelines=1
set laststatus=2
set history=1000
set colorcolumn=+1
set background=dark
let g:hybrid_custom_term_colors = 1
colorscheme hybrid
set guifont=Inconsolata\ 13
set t_Co=256
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
" }}}

" Keymappings {{{
let mapleader=","
set gdefault

nnoremap / /\v
vnoremap / /\v
nnoremap - :tabprevious<CR>
nnoremap = :tabnext<CR>
"  }}}

" Autocommands {{{
au FileType python setlocal tabstop=4
au FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
au FileType sh,bash setlocal tabstop=8
au BufEnter *.md setlocal ft=markdown tabstop=2
" }}}

" Backups {{{
set backupdir=$HOME/.vim/backup
set backupcopy=yes
set directory=~/.vim/swap/,~/tmp,.
" }}}

" Pymode {{{
let g:pymode_rope = 0
let g:pymode_lint_checkers = ['pyflakes']
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
let g:pymode_folding = 0
" }}}

" NERDTree {{{
let g:NERDTreeWinSize = 29
map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
" }}}

" Airline {{{
let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'
" }}}

" CtrlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
" }}}

" tmux {{{
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursprShape=0\x7"
endif
" }}}

" vim:foldmethod=marker:foldlevel=0
