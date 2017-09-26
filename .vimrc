"basic settings
set nocompatible
set fileencodings=utf8,euc-kr
set mouse=a
set nu
set relativenumber
set smartindent
set autoindent
set hlsearch
set ignorecase

set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab

set showmatch
set visualbell
set autoread

syntax on

nmap <F3> :NERDTreeToggle<CR>

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"NERD TREE
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Color Schemes
Plug 'flazz/vim-colorschemes'
"Vim Ariline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Javascript
Plug 'pangloss/vim-javascript'
"Vim devicons
Plug 'ryanoasis/vim-devicons'
" Initialize plugin system
call plug#end()

"Ariline settings
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'
"Javascript settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
"Devicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:NERDTreeDirArrowExpandable="\ue5ff"
let g:NERDTreeDirArrowCollapsible="\ue5fe"
"Colorscheme settings
"colorscheme molokai
colorscheme jellybeans
"Vertical layout prop
hi VertSplit ctermfg=129 ctermbg=129 cterm=NONE

autocmd VimEnter * NERDTree
