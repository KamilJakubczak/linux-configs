 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'w0rp/ale'
Plugin 'ervandew/supertab'
Plugin 'valloric/youcompleteme'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on



let g:airline_solarized_bg='dark'


set t_Co=256
set number
set relativenumber

set smartindent 
set tabstop=4
set shiftwidth=4
set expandtab

""set termguicolors

inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>

syntax on
colorscheme gruvbox

set bg=dark
hi Normal guibg=NONE ctermbg=NONE
