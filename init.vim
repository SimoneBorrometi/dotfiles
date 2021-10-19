" @filename: ~/.config/nvim/init.vim

set number
set relativenumber
set showmatch
set hidden
set autoindent
set t_Co=256
set smartindent
set clipboard=unnamedplus
set termguicolors

cmap w!! w !sudo tee %

call plug#begin("~/.vim/plugged")
Plug 'dracula/vim'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'scrooloose/nerdtree'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pacokwon/onedarkhc.vim'
"Our plugins will go in the middle
call plug#end()

colorscheme dracula

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 0
let g:NERDTreeIgnore = ['node_modules']
let NERDTreeStatusLine='NERDTree'
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-a> :NERDTreeToggle<CR>
