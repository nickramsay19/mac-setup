" File: .vimrc
" Author: Nick Ramsay

" --- Automatically Install vim-plug Plugin Manager ---
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" --- Setup vim-plug Plugins ---
call plug#begin()
  Plug 'scrooloose/nerdtree'
call plug#end()

" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

set tabstop=2

syntax on

set mouse=a

set background=dark
" colorscheme solarize

" --- Key Binds ---
" Unbind Arrow Keys
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
" Remap Escape
imap jk <Esc> 
" Remap Colon to semicolon
nmap ; :
noremap ;; ;

"NERDTREE Settings
map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

