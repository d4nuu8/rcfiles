set nocompatible
filetype off

" Set-up Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Install plugins
Plugin 'vim-airline/vim-airline'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'preservim/nerdtree'
Plugin 'editorconfig/editorconfig-vim'
call vundle#end()

filetype plugin indent on
