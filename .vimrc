" Set the encoding
set encoding=utf8

" Indentation and tabbing
set autoindent
set expandtab
set shiftround
set smartindent
set smarttab
set shiftwidth=4
set tabstop=4

nnoremap <silent> >> :call ShiftLine()<CR>|

function! ShiftLine()
    set nosmartindent
    normal! >>
    set smartindent
endfunction

" Searching and completion
set hlsearch
set incsearch
set ignorecase
set smartcase

set infercase
set wildmode=list:longest,full

nnoremap //  /<C-R>/
nnoremap /// /<C-R>/\<BAR>
nnoremap <silent> <F3> :noh<CR>

" Set clipboard to system clipboard
if has('unnamedplus')
    set clipboard=unnamedplus
endif

" Highlighting
highlight Pmenu      ctermbg=yellow  ctermfg=black
highlight PmenuSel   ctermbg=red     ctermfg=white   cterm=bold
highlight PmenuSbar  ctermbg=magenta ctermfg=magenta
highlight PmenuThumb ctermbg=red     ctermfg=red

highlight visual     ctermfg=red  ctermbg=yellow

" Visual mode moving around
vmap <unique> <up>    <Plug>SchleppUp
vmap <unique> <down>  <Plug>SchleppDown
vmap <unique> <left>  <Plug>SchleppLeft
vmap <unique> <right> <Plug>SchleppRight
vmap <unique> i       <Plug>SchleppToggleReindent
vmap <unique> Dk      <Plug>SchleppDupUp
vmap <unique> Dj      <Plug>SchleppDupDown
vmap <unique> Dh      <Plug>SchleppDupLeft
vmap <unique> Dl      <Plug>SchleppDupRight

" Digraphs
inoremap <expr> <C-J> HUDG_GetDigraph()
" inoremap <expr> <C-L> HUDigraphs()

" function! HUDigraphs ()
"     digraphs
"     call getchar()
"     return "\<C-K>"
" endfunction

" Misc settings
set number
set ruler
set showcmd
set showmatch

set background=dark
set backspace=2
set formatoptions=c,q,r,t
set matchtime=1
set mouse=a

set matchpairs+=<:>

set laststatus=2

execute pathogen#infect()
filetype plugin indent on
syntax on
Helptags
