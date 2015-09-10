"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""" Vundle Configure """""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""" The following are examples of different formats supported.
""" Keep Plugin commands between vundle#begin/end.

""" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

""" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

""" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

""" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

""" The sparkup vim script is in a subdirectory of this repo called vim.
""" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

""" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}


"""""""""""" Start: custom plugins """"""""""""""""""""""""""""

""" File and Directory explorer
Plugin 'scrooloose/nerdtree'

""" Vim UI: status bar, tag bar, etc.
Plugin 'bling/vim-airline'

""" Color scheme
Plugin 'altercation/vim-colors-solarized'
"Plugin 'tomasr/molokai'

""" Syntax check
Plugin 'scrooloose/syntastic'

""" Alignment and Indent
"Plugin 'godlygeek/tabular'
"Plugin 'nathanaelkane/vim-indent-guides'

""" overview of file's structure
Plugin 'majutsushi/tagbar'

""" Code autocomplete
Plugin 'Raimondi/delimitMate'
"Plugin 'Valloric/YouCompleteMe'

"""""""""""" End: custom plugins """"""""""""""""""""""""""""


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
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" config font for Gvim
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11

""" airline
set laststatus=2
""" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
""" 开启tabline
let g:airline#extensions#tabline#enabled = 1
""" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
""" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
""" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
""" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>>>

""" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set noshowmode

""" Color scheme, 语法高亮
syntax enable
set background=dark
""" 在终端下打开256色
set t_Co=256 " NOTE: inherit from xterm, so need configure xterm before
colorscheme solarized
let g:solarized_termcolors=256
"colorscheme molokai

""" code autocomplete, 代码自动补全
"let g:ycm_global_ycm_extra_conf = '/home/wenchy/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'


""" Backspace deletes like most programs in insert mode
set backspace=2

""" Show the cursor position all the time
""" 标尺，用于显示光标位置的行号和列号，逗号分隔。
""" 每个窗口都有自己的标尺。如果窗口有状态行，
""" 标尺在那里显示。否则，它显示在屏幕的最后一行上。
set ruler

""" Display incomplete commands
""" 在状态栏显示正在输入的命令
set showcmd

""" Set fileencodings
set fileencodings=utf-8,bg18030,gbk,big5

""" C/C++ language indent
set cin
set sw=4
set sm

""" softtabs, 设tab宽为4个空格
set ts=4 " set tabstop=4
set softtabstop=4

" 设置（自动）缩进的空格数为4
set shiftround
set shiftwidth=4

""" set expandtab: 设置一个tab为4个空格，即用4个空格来替换制表符"\t"
""" set noexpandtab: 用制表符"\t"表示一个缩进
set et

""" Display extra whitespace
set list listchars=tab:»·,trail:·

""" Number
set nu " set number(nu)
"set numberwidth=5

""" Search
set matchpairs+=<:>
""" 高亮搜索结果
set hlsearch
""" 搜索的时候实时显示结果
set incsearch

""" 设置匹配模式，显示匹配的括号
set showmatch

""" 智能补全
set completeopt=longest,menu

""" 设置历史记录为50条
set history=50
"
""" Indent
 set autoindent
 set smartindent

""" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

""" 为方便复制，用<F2>开启/关闭行号显示:
nnoremap <F2> :set nonumber!<CR>

""" insert mode auto-completion for
""" quotes, parens, brackets, etc.
""" 括号引号补全
:inoremap ( ()<ESC>i
:inoremap { {<CR>}<ESC>O
:inoremap [ []<ESC>i
:inoremap < <><ESC>i
