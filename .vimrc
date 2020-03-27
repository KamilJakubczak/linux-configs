 
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
Plugin 'tmhedberg/SimpylFold'
Plugin 'nvie/vim-flake8'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

set encoding=utf-8
let g:airline_solarized_bg='dark'

set t_Co=256
set number
set relativenumber

let python_highlight_all=1
syntax on
colorscheme gruvbox

"set bg=dark
"hi Normal guibg=NONE ctermbg=NONE
"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.js,*.html,*.css,*.php match BadWhitespace /\s\+$/
"comment below to have transparent window
" set termguicolors

" Enable folding
set foldmethod=indent
set foldlevel=99

"set leader key
let mapleader=" "

" Enable folding with the spacebar
nnoremap <space> za

"brackets completions
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>

:set listchars=tab:\|\ 
"set whitespaces
"set listchars=tab:▸-
"set listchars=tab:␉·
set list
" Python PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix
    \ colorcolumn=80

" JS, HTML, CSS intentation
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
    \ expandtab
    \ autoindent

"""""""""""""""""""""""""""""
"" NERDCommernter settings ""
"""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


"""""""""""""""""""""""""
"" SimplyFold settings ""
"""""""""""""""""""""""""
"Show docstrings on folded area
let g:SimpylFold_docstring_preview=1


""""""""""""""""""
"" YTC settings ""
""""""""""""""""""
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"""""""""""""""""""""""
"" Vim indent plugin ""
""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1
