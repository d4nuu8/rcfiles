set nocompatible
filetype off

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

" Set-up Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Install plugins
Plugin 'vim-airline/vim-airline'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'preservim/nerdtree'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-scripts/Smart-Tabs'
call vundle#end()

" Enable project specific vimrc file
set exrc

" Automatically re-read files if unmodified
set autoread
autocmd CursorHold * checktime

" Show line numbers
set number
set relativenumber

" Configure indentation
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cinoptions=(0,u0,U0

" Change swap file location
set directory=$HOME/.vim/swp//

" Disable backup files
set nobackup
set nowritebackup

" Enable file type detection
filetype plugin indent on

" Enable syntax higlighting
syntax on

" Set color scheme
set cursorline
colorscheme onehalflight
let g:airline_theme='onehalfdark'

" Configure NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <silent> <C-n> :NERDTreeToggleVCS<CR>

" Remove trailing white spaces
autocmd BufWritePre * %s/\s\+$//e
