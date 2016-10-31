syntax on
set background=dark
" solarized options
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors=256
colorscheme solarized
set number
set guifont=Menlo\ Regular:h13

set nocompatible              " be iMproved, required
filetype off                  " required

set wildignore+=*/node_modules/*,*/dist/*,*/coverage/*,*/vendor/*
set backupdir=$TMPDIR//
set directory=$TMPDIR//
set updatetime=250
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2
set foldmethod=indent
set nofoldenable    " disable folding

let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]\.(node_modules|dist|coverage|vendor)$'
\ }



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'StanAngeloff/php.vim'
Plugin 'taglist.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'airblade/vim-gitgutter'
Plugin 'jaxbot/semantic-highlight.vim'
Plugin 'vim-airline/vim-airline'

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
"##############################################################################
" Easier split navigation
"##############################################################################

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

map <D-e> :CtrlPMRUFiles<CR>
map <D-1> :NERDTreeFind<CR>

set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " Set 7 lines to the cursor - when moving vertically using j/k
 set so=7

 " Avoid garbled characters in Chinese language windows OS
 let $LANG='en'
" set langmenu=en
" source $VIMRUNTIME/delmenu.vim
" source $VIMRUNTIME/menu.vim
"
 " Turn on the WiLd menu
 set wildmenu

 if has("win16") || has("win32")
  set wildignore+=.git\*,.hg\*,.svn\*
 else
   set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
 endif

 "Always show current position
 set ruler

 " Height of the command bar
 set cmdheight=2

 " A buffer becomes hidden when it is abandoned
 set hid

 " Configure backspace so it acts as it should act
 set backspace=eol,start,indent
 set whichwrap+=<,>,h,l

 " Ignore case when searching
 set ignorecase

 " When searching try to be smart about cases
 set smartcase

 " Highlight search results
 set hlsearch

 " Makes search act like search in modern browsers
 set incsearch

 " Don't redraw while executing macros (good performance config)
 set lazyredraw

 " For regular expressions turn magic on
 set magic

 " Show matching brackets when text indicator is over them
 set showmatch
 " How many tenths of a second to blink when matching brackets
 et mat=2
