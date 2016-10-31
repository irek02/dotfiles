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
