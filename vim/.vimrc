set nocompatible
filetype off                  " required

execute pathogen#infect()

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
 Plugin 'tpope/vim-surround'
 Plugin 'xolox/vim-misc.git'
 Plugin 'xolox/vim-notes.git'
 Plugin 'jiangmiao/auto-pairs'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin) 
" " Plugin 'file:///home/gmarik/path/to/plugin' 
" The sparkup vim script is in a subdirectory of this repo called vim.  
" Pass the path to set the runtimepath properly.  
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} 
" Install L9 and avoid a Naming conflict if you've already installed a 
" different version somewhere else.  
" Plugin 'ascenator/L9', {'name': 'newL9'} 
Plugin 'junegunn/fzf.vim' 
Plugin 'itchyny/lightline.vim' 

Plugin 'fatih/vim-go.git'
Plugin 'scrooloose/nerdtree' 
Plugin 'scrooloose/syntastic' 

Plugin 'airblade/vim-gitgutter'
" All of your Plugins must be added before the following line 
call vundle#end()            " required 
filetype plugin indent on    " required 
" To ignore plugin indent changes, instead use: 
" filetype plugin on " " Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set completeopt=longest,menuone
set history=999
set showcmd
set showmode
set autoread
set laststatus=2
set ruler
set wildmenu
" set cursorline
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set encoding=utf8
set ffs=unix,dos,mac
" highlight trailing space
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
set mouse=a
set background=dark
set number
set relativenumber

" Turn off backups/swap
set nobackup
set nowb
set noswapfile

set shiftwidth=2
set expandtab
set smarttab
set wrap

set scrolloff=2
set sidescrolloff=5
set confirm
syntax on
set nomodeline
colorscheme elflord
filetype plugin indent on

" Using lightline for status bar -- saving this for later
" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
set statusline+=%#warningmsg#
set statusline+=%#{SyntasticStatuslineFlag()}#
set statusline+=%*

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
" vnoremap <silent> * :call VisualSelection('f', '')<CR>
" vnoremap <silent> # :call VisualSelection('b', '')<CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Remap VIM 0 to first non-blank character
map 0 ^

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><CR> :noh<CR>

set hlsearch
set infercase
set ignorecase
set smartcase
set incsearch
set lazyredraw
set showmatch
set magic
set mat=2
set ai
set si
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap j gj
nnoremap k gk
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
map <C-K> :bprev<CR>
map <C-J> :bnext<CR>
" map <C-[> <esc>
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
set ttyfast
set undodir=~/.vim/undodir
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END
" NerdTree Settings
" autocmd VimEnter * NERDTREE
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" map <S-n> :NERDTreeToggle<CR>

augroup vimrcEx
  autocmd!
  autocmd FileType text setlocal textwidth=78
  " Jump to last cursor position unless it's invalid or in an event handler
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     exe "normal g`\"" |
        \ endif
augroup END

function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
     return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>

" setting Vim-Note directory
let g:notes_directories = ['~/Dropbox/Documents/Notes']


" Helper function
function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("Ack \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
