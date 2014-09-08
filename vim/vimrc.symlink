set nocompatible
filetype off

set rtp+=/usr/local/go/misc/vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'YankRing.vim'
Plugin 'git://git.wincent.com/command-t.git'

call vundle#end()

let g:CommandTMatchWindowAtTop = 1
let g:EasyMotion_leader_key = ';'
let g:Powerline_symbols = 'fancy'
let g:yankring_history_file = '.yankring_history'

" Color
colorscheme solarized

" Indentation
filetype plugin indent on
au BufNewFile,BufReadPost *.go,*.rb,*.erb,*.css,*.scss,*.html,*.js setl shiftwidth=2 expandtab

" Mappings
let mapleader = ","
nmap <Leader>b :FufBuffer<CR>
nmap <Leader>d :FufDir<CR>
nmap <Leader>f :FufFile<CR>
nmap <Leader>F :FufCoverageFile<CR>
nmap <Leader>k :bd<CR>
nmap <Leader>K :bd!<CR>
nmap <Leader>n :enew<CR>
nmap <Leader>q :q<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>t :CommandT<CR>
nmap <Leader>w :w<CR>
nmap <Leader>ev :e $MYVIMRC<CR>
nmap <Leader>sv :so $MYVIMRC<CR>
nmap <Leader>/ :nohlsearch<CR>
imap jk <Esc>

" Settings
set background=dark
set cursorline
set guifont=Monaco:h14
set guioptions-=T
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=extends:>,precedes:<,tab:>-,trail:~
set nobackup
set noswapfile
set nowrap
set number
set smartcase
set wildignore+=bin/**
set wildignore+=vendor/**

fun! <SID>StripTrailingWhitespace()
  let l = line(".")
  let c = col(".")
  let _s = @/
  %s/\s\+$//e
  let @/ = _s
  call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespace()
