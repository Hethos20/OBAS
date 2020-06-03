set wrap!
set number
set laststatus=2

filetype indent on

call plug#begin('$HOME/.vim/plugged')

	Plug 'itchyny/lightline.vim'
	Plug 'gabrielelana/vim-markdown'
	Plug 'ervandew/supertab'

call plug#end()
