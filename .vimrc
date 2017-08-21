set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'nvie/vim-flake8'
" Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
" Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'raimondi/delimitmate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'JuliaLang/julia-vim'
Plugin 'vimwiki/vimwiki'
" Plugin 'editorconfig/editorconfig-vim'

call vundle#end()
filetype plugin indent on

" gruvbox color scheme
let python_highlight_all=1
syntax on
syntax enable
"set t_Co=256
set background=dark
let g:gruvbox_contrast_dark='soft'
colorscheme gruvbox

" indentation
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

" no backups and swap files
set nobackup
set noswapfile

" change workdir automatically
set autochdir

" splits' occurence change
set splitbelow
set splitright

" gui features
set number
set cursorline
set showmatch
set ruler

" airline configuration
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'

" insert ipdb line
nnoremap <leader>p oimport ipdb; ipdb.set_trace()<Esc>
nnoremap <leader><S-p> Oimport ipdb; ipdb.set_trace()<Esc>

" latex turkish character mappings
nnoremap <leader>lg a\u{g}
nnoremap <leader>lG a\u{G}
nnoremap <leader>lc a\c{c}
nnoremap <leader>lC a\c{C}
nnoremap <leader>ls a\c{s}
nnoremap <leader>lS a\c{S}
nnoremap <leader>lu a\"{u}
nnoremap <leader>lU a\"{U}
nnoremap <leader>lo a\"{o}
nnoremap <leader>lO a\"{O}
nnoremap <leader>li a{\i}
nnoremap <leader>lI a\.{I}

set term=screen-256color
