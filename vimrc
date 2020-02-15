filetype off                  " required
 
"---------- Plugins -------------------------------------------------- 
" call plug#begin('~/.vim/plugged')
" Plug 'junegunn/vim-plug'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-commentary'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-notes'
" Plug 'jiangmiao/auto-pairs'
" Plug 'dense-analysis/ale'
" Plug 'git://git.wincent.com/command-t'
" Plug 'rstacruz/sparkup', {'rtp': 'vim/'} 
" Plug 'itchyny/lightline.vim' 
" Plug 'fatih/vim-go'
" Plug 'junegun/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
" Plug 'junegun/fzf.vim'
" Plug 'scrooloose/nerdtree' 
" Plug 'scrooloose/syntastic' 
" Plug 'airblade/vim-gitgutter'
" Plug 'Olical/conjure', { 'tag': 'v2.1.0', 'do': 'bin/compile' }
" call plug#end()

filetype plugin indent on    " required 

" Enable fzf
set rtp+=~/.fzf

set completeopt=longest,menuone
set noswapfile
set history=999
set showcmd
set autoread
set laststatus=2
set ruler
set wildmenu
set cursorline
set foldenable
set foldlevelstart=10
set foldnestmax=10
" Errors
set noerrorbells
set visualbell
set mouse=a
set background=dark
set number
set relativenumber
set nobackup
set nowb
set shiftwidth=2
set expandtab
set wrap
set scrolloff=2
set sidescrolloff=5
set confirm
set lazyredraw
set ttyfast
syntax on
set nomodeline
" colorscheme molokai // Currently being set in nvim
set termguicolors
set noshowmode

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set ai
set si
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
" Adds the current Git branch to the lightline
let g:lightline = { 
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }


" Automatically reload files when they're edited outside of current buffer
set autoread
auto FocusGained,BufEnter * :checktime

if has('persistent_undo')
  set undodir=~/.vim/undodir
  set undofile
endif


"---------- Bindings  -------------------------------------------------- 
nnoremap j gj
nnoremap k gk
let mapleader = "\<Space>"
nmap <Leader>p :Files<CR>
nmap <Leader>l :Lines<CR>
nmap <Leader>P :Commands<CR>
nmap <Leader>t :GoTest<CR>
nmap <Leader>r :GoRun %<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <silent><Leader>d :r!date<Esc> mo2o<Esc>`oj
nmap <silent><Leader>y o- (DONE) 
nmap <silent><Leader>t i- (DONE) 
nmap <Leader>\ :let @/ = ""<CR>
nmap <Leader>gt :!go test ./... -coverprofile coverage.out<CR>
nmap <Leader>gb :!go test -v --bench . --benchmem<CR>
noremap <silent> s* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
vnoremap <silent><leader>f <Esc>:FZF -q <C-R>=<SID>getVisualSelection()<CR><CR>
xnoremap <silent> s* "sy:let @/=@s<CR>cgn
map <C-K> :bprev<CR>
map <C-J> :bnext<CR>
map <Leader>ss :split<Return><C-w>w
map <Leader>sv :vsplit<Return><C-w>w


let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25


" Golang syntax highlighting
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_funciton_calls=1
let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_generate_tags = 1
let g:go_auto_sameids = 1
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1


" mhinz/vim-grepper
let g:grepper={}
let g:grepper.tools=["rg"]
xmap gr <plug>(GrepperOperator)

" After searching for text, press this mapping to do a project wide find and
" replace. It's similar to <leader>r except this one applies to all matches
" across all files instead of just the current file.
nnoremap <Leader>R
  \ :let @s='\<'.expand('<cword>').'\>'<CR>
  \ :Grepper -cword -noprompt<CR>
  \ :cfdo %s/<C-r>s//g \| update
  \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" The same as above except it works with a visual selection.
xmap <Leader>R
    \ "sy
    \ gvgr
    \ :cfdo %s/<C-r>s//g \| update
     \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

map <S-n> :NERDTreeToggle<CR>
nmap <Leader>n :NERDTreeToggle<Enter>

" Jump to last cursor position unless it's invalid or in an event handler
augroup vimrcEx
  autocmd!
  autocmd FileType text setlocal textwidth=78
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     exe "normal g`\"" |
        \ endif
augroup END


"---------- Funcitons  -------------------------------------------------- 

" Allows TAB to bring up an autocomplete window
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

function! s:getVisualSelection()
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)

    if len(lines) == 0
        return ""
    endif

    let lines[-1] = lines[-1][:column_end - (&selection == "inclusive" ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]

    return join(lines, "\n")
endfunction


"-----------------Scraps---------------------------------"
" Using lightline for status bar -- saving this for later  
" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
" set statusline+=%#warningmsg#
" set statusline+=%#{SyntasticStatuslineFlag()}#
" set statusline+=%*
