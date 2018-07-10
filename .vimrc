"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                preamble                                 "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
" Needed for vundle, will be turned on after vundle inits
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Vundle configuration                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" These need to come before the configuration options for the plugins since
" vundle will add the plugin folders to the runtimepath only after it has seen
" the plugin's Plugin command
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

"""""""""" Begin: local plugins """"""""""
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file://~/.vim/bundle/nerdtree'
"Plugin 'file://~/.vim/bundle/ctrlp.vim'
"Plugin 'file://~/.vim/bundle/tabular'
"Plugin 'file://~/.vim/bundle/tagbar'
"Plugin 'file://~/.vim/bundle/vim-startify'
"Plugin 'file://~/.vim/bundle/gruvbox'
"Plugin 'file://~/.vim/bundle/vim-airline'
"Plugin 'file://~/.vim/bundle/delimitMate'
"Plugin 'file://~/.vim/bundle/vim-multiple-cursors'
"Plugin 'file://~/.vim/bundle/nerdcommenter'
"Plugin 'file://~/.vim/bundle/vim-surround'
""""""""""   End: local plugins """"""""""

"""""""""" Begin: remote plugins """"""""""
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-startify'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
""""""""""   End: remote plugins """"""""""

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""" Custom Plugin """"""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       ***  HERE BE PLUGINS  ***                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" airline
""let g:airline_theme="luna"
set laststatus=2
"这个是安装字体后 必须设置此项"
let g:airline_powerline_fonts = 1
"打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
"我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1


""" NERDTree
" open NERDTree when vim start
"autocmd VimEnter * NERDTree
" F1 => toggle NERDTree
nnoremap <F1> :silent! NERDTreeToggle<CR>
"let NERDTreeWinPos="right"
let NERDTreeShowBookmarks=1

""" tagbar
" F1 => toggle tagbar
nmap <F2> :TagbarToggle<CR>

""" nerdcommenter
" 注释的时候自动加个空格
let g:NERDSpaceDelims=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            General settings                             "
"                            Non-Plugin Stuff                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set fileencodings=utf-8,gbk,big5		" file encodings
set number								" show line number
""" F10 => toggle number
nnoremap <F10> :set nonumber!<CR>		" F10 switch on/off for number

""" DISPLAY SETTINGS
syntax enable							" syntax on
set background=dark     				" enable for dark terminals
set showmatch           				" show matching bracket (briefly jump)
set matchtime=2         				" reduces matching paren blink time from the 5[00]ms def
set showmode            				" show mode in status bar (insert/replace/...)
set showcmd             				" show typed command in status bar
set ruler               				" show cursor position in status bar
set title               				" show file in titlebar
set winaltkeys=no       				" turns of the Alt key bindings to the gui menu
""" Highlight current line
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline nocursorcolumn
set cursorline cursorcolumn

""" colorscheme: solarized and gruvbox
"set t_Co=8								" Xshell bug for solarized
"let g:solarized_termcolors=256
"colorscheme solarized
set t_Co=256
colorscheme gruvbox

""" When you type the first tab, it will complete as much as possible, the second
""" tab hit will provide a list, the third and subsequent tabs will cycle through
""" completion options so you can complete the file without further keys
set wildmode=longest,list,full
set wildmenu            " completion with menu
""" This changes the default display of tab and CR chars in list mode
set listchars=tab:▸\ ,eol:¬

""" The "longest" option makes completion insert the longest prefix of all
""" the possible matches; see :h completeopt
set completeopt=menu,menuone,longest
set switchbuf=useopen,usetab

""" EDITOR SETTINGS
set ignorecase          				" case insensitive searching
set smartcase          				 	" but become case sensitive if you type uppercase characters
""" this can cause problems with other filetypes
""" see comment on this SO question http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim/234578#234578
"set smartindent         				" smart auto indenting
set autoindent          				" on new lines, match indent of previous line
set copyindent          				" copy the previous indentation on autoindenting
set cindent             				" smart indenting for c-like code
set cino=b1,g0,N-s,t0,(0,W4  			" see :h cinoptions-values
set smarttab            				" smart tab handling for indenting
set magic               				" change the way backslashes are used in search patterns
set bs=indent,eol,start 				" Allow backspacing over everything in insert mode
set nobackup            				" no backup~ files.

set tabstop=4           				" number of spaces a tab counts for
set shiftwidth=4        				" spaces for autoindents
set softtabstop=4
set shiftround          				" makes indenting a multiple of shiftwidth
set expandtab           				" turn a tab into spaces
set laststatus=2        				" the statusline is now always shown
set noshowmode          				" don't show the mode ("-- INSERT --") at the bottom

""" misc settings
set fileformat=unix     				" file mode is unix
set fileformats=unix,dos,mac   			" detects unix, dos, mac file formats in that order

set viminfo='20,\"500   				" remember copy registers after quitting in the .viminfo
										" file -- 20 jump links, regs up to 500 lines'

set hidden              				" allows making buffers hidden even with unsaved changes
set history=1000        				" remember more commands and search history
set undolevels=1000     				" use many levels of undo
set autoread            				" auto read when a file is changed from the outside
set mouse=a             				" enables the mouse in all modes
set foldlevelstart=99   				" all folds open by default

""" toggles vim's paste mode; when we want to paste something into vim from a different
""" application, turning on paste mode prevents the insertion of extra whitespace
set pastetoggle=<F7>

""" Right-click on selection should bring up a menu
set mousemodel=popup_setpos

""" Look for tag def in a "tags" file in the dir of the current file, then for that
""" same file in every folder above the folder of the current file, until theroot.
set tags=./tags;/

""" Number of screen lines to use for the command-line
set cmdheight=2

""" allow backspace and cursor keys to cross line boundaries
set whichwrap+=<,>,h,l
set nohlsearch          				" do not highlight searched-for phrases
set incsearch           				" but do highlight-as-I-type the search string
set gdefault            				" this makes search/replace global by default

""" none of these should be word dividers, so make them not be
set iskeyword+=_,$,@,%,#

""" enforces a specified line-length and auto inserts hard line breaks when we
""" reach the limit; in Normal mode, you can reformat the current paragraph with
""" gqap.
set textwidth=80

augroup vimrc
  " Automatically delete trailing DOS-returns and whitespace on file open and write.
  autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//
augroup END

""" Highlight Class and Function names
function! s:HighlightFunctionsAndClasses()
  syn match cCustomFunc      "\w\+\s*\((\)\@="
  syn match cCustomClass     "\w\+\s*\(::\)\@="

  hi def link cCustomFunc      Function
  hi def link cCustomClass     Function
endfunction

""" Highlight Class and Function names, D specific
function! s:HighlightDFunctionsAndClasses()
  syn match cCustomDFunc     "\w\+\s*\(!.\{-}(\)\@="
  syn match cCustomDFuncUFCS ".\w\+\s*\(!.\{-}\)\@="

  hi def link cCustomDFunc     Function
  hi def link cCustomDFuncUFCS Function
endfunction

""" TODO: this should:
""" a) not be called for every filetype
""" b) be in a separate plugin
au vimrc Syntax * call s:HighlightFunctionsAndClasses()
au vimrc Syntax d call s:HighlightDFunctionsAndClasses()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            custom mappings                              "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" our <leader> will be the space key
let mapleader=" "

""" our <localleader> will be the '-' key
let maplocalleader="-"

" this makes vim's regex engine "not stupid"
" see :h magic
nnoremap / /\v
vnoremap / /\v
