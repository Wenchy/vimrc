set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" File and Directory explorer
Plugin 'scrooloose/nerdtree'

" Vim UI
"Plugin 'bling/vim-airline'
Plugin 'Lokaltog/vim-powerline'

" Color scheme
Plugin 'altercation/vim-colors-solarized'
"Plugin 'tomasr/molokai'

" Syntax check
Plugin 'scrooloose/syntastic'

" Alignment and Indent
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'

"overview of file's structure 
Plugin 'majutsushi/tagbar'

" Code autocomplete
Plugin 'Raimondi/delimitMate'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Status line 
" let g:airline#extensions#tabline#enabled = 1
"powerline
"let g:Powerline_symbols = 'unicode'
set laststatus=2 " Always display the statusline in all windows
"set guifont=Inconsolata\ for\ Powerline:h14
" Hide the default mode text (e.g. -- INSERT -- below the statusline)
"set noshowmode 

" powerline {
set guifont=PowerlineSymbols\ for\ Powerline
"set t_Co=256
let g:Powerline_symbols = 'fancy'
" }

" Color scheme, 语法高亮
syntax enable 
syntax on
set background=dark
colorscheme solarized
"set t_Co=256
"colorscheme molokai

"code autocomplete
let g:ycm_global_ycm_extra_conf = '/home/wenchy/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'


" Backspace deletes like most programs in insert mode
set backspace=2

" Show the cursor position all the time
set ruler
" Display incomplete commands
set showcmd
" Set fileencodings
set fileencodings=utf-8,bg18030,gbk,big5

filetype plugin indent on
" C language indent
set cin
set sw=4
set sm
" softtabs, 设tab宽为4个空格
set ts=4 "set tabstop=4
set softtabstop=4
set shiftround
set shiftwidth=4

"set expandtab: 设置一个tab为4个空格，即用4个空格来替换制表符"\t"
"set noexpandtab: 用制表符"\t"表示一个缩进
set et

" Display extra whitespace
set list listchars=tab:»·,trail:·

"Number
set nu "set number(nu)
"set numberwidth=5

"Search
set matchpairs+=<:>
set hlsearch

" Indent
set autoindent
set smartindent

" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" Personal Customization

"insert mode auto-completion for quotes, parens, brackets, etc.
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
"inoremap { {}<ESC>i
"inoremap < <><ESC>i

