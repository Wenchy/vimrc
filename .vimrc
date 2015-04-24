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
Plugin 'bling/vim-airline'
"Plugin 'Lokaltog/vim-powerline'

" Color scheme
Plugin 'altercation/vim-colors-solarized'
"Plugin 'tomasr/molokai'

" Syntax check
Plugin 'scrooloose/syntastic'

" Alignment and formation
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'

" Code autocomplete
"Plugin 'Valloric/YouCompleteMe'

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


"语法高亮
syntax on
set background=dark
colorscheme solarized
"colorscheme molokai

"set tabstop(ts)=4, 设tab宽为4个空格
set ts=4

"set expandtab: 设置一个tab为4个空格，即用4个空格来替换制表符"\t"
"set noexpandtab: 用制表符"\t"表示一个缩进
set et

"
set softtabstop=4
set shiftwidth=4

"set number(nu)
set nu

set autoindent
set smartindent

