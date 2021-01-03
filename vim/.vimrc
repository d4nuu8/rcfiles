" Load Vundle configuration
source ~/.vim/vundle.vim

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

" Enable project specific vimrc file
set exrc
set secure

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

" Configure search
set ignorecase
set smartcase
set incsearch

" Change swap file location
set directory=$HOME/.vim/swp//

" Disable backup files
set nobackup
set nowritebackup

" Enable undo files
set undofile
set undodir=$HOME/.vim/undo//

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
