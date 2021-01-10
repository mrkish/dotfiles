set nocompatible

filetype off                  " required
 
filetype plugin indent on    " required 

" Automatically reload files when they're edited outside of current buffer
set autoread
auto FocusGained,BufEnter * :checktime

if has('persistent_undo')
  set undodir=~/.vim/undodir
  set undofile
endif

nnoremap j gj
nnoremap k gk

syntax on

colorscheme gruvbox
set background=dark
set termguicolors

let g:enable_bold_font=1
let g:rainbow_active = 1

set hidden
" Better display for messages
set cmdheight=1
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=no
set splitright
set splitbelow
set clipboard=unnamedplus

set completeopt=longest,menuone
set noswapfile
set history=999
set showcmd
set autoread
set ruler
set wildmenu
set wildmode=longest,list
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
set nu rnu
set hls is
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
set nomodeline
" colorscheme molokai // Currently being set in nvim
set noshowmode

" Searching
set hlsearch
set incsearch
set magic
set ignorecase
set smartcase
set ai
set si
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)


"---------- Leader Bindings  -------------------------------------------------- 
let mapleader = " "
nmap <Leader>k :GFiles<CR>
nmap <Leader>; :Files<CR>
nmap <Leader>l :Lines<CR>
nmap <Leader>P :Commands<CR>
nmap <Leader>gt :GoTest<CR>
nmap <Leader>gr :GoRun %<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <silent><Leader>d :r!date<Esc>o
nmap <silent><Leader>u i- (DONE) 
" nmap <silent><Leader>t o- (DONE) 
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

map <S-n> :NERDTreeToggle<CR>
nmap <silent><Leader>n :NERDTreeToggle<Enter>


" COC settings
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


" setting up vim-which-key
set timeout
set timeoutlen=800
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
" unmap <Leader>ww
nnoremap <Leader>W  <Plug>VimwikiIndex


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


" NERDTree
let NERDTreeShowLineNumbers=1
let NERDTreeRelativeNumbers=1
let NERDTreeWinPos=1
let NERDTreeAutoDeleteBuffer = 1


" Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25


" Golang syntax highlighting
let g:go_def_mapping_enabled = 0
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
let g:go_auto_sameids = 0
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1