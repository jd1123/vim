" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" ========== VUNDLE ==========
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" ======== PLUGINS =========
Bundle 'gmarik/vundle'
Bundle 'klen/python-mode'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
"Bundle 'wincent/Command-T'
Bundle 'altercation/vim-colors-solarized'
Bundle 'airblade/vim-gitgutter' 
Bundle 'kien/ctrlp.vim'
Bundle 'fatih/vim-golang'
"Bundle 'Shougo/neocomplete.vim'
" ======== END PLUGINS =====



" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

if $TERM == "xterm-256color"
  set t_Co=256
endif

filetype on
filetype indent plugin on
syntax on
nnoremap <F5> :GundoToggle<CR>
set foldlevel=99
set showtabline=2
set laststatus=2
set statusline+=%F
set number

" Make tabs not stink
set tabstop=4
set shiftwidth=4
set softtabstop=4


let g:NERDTreeDirArrows=0

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

let g:ycm_path_to_python_interpreter = '/usr/bin/python'

colo jellybeans
