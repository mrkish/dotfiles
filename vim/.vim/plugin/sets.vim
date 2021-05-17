" Enable fzf
set rtp+=~/.fzf

" fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

" setting Vim-Note directory
let g:notes_directories = ['~/Dropbox/Documents/Notes']

let mapleader = " "
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <silent><Leader>d :r!date<Esc>o
nnoremap <silent><Leader>u i- (DONE) 
nnoremap <Leader>\ :let @/ = ""<CR>

nmap <silent><Leader>n :NERDTreeToggle<Enter>

" NERDTree
let NERDTreeShowLineNumbers=1
let NERDTreeRelativeNumbers=1
let NERDTreeWinPos=1
let NERDTreeAutoDeleteBuffer = 1

" mhinz/vim-grepper
let g:grepper={}
let g:grepper.tools=["rg"]
xmap gr <plug>(GrepperOperator)

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

set wildmode=longest,list,full
set wildmenu
" set wildignore+=*./vendor/*

set backspace=indent,eol,start

set relativenumber 
set number
set nohlsearch
set hidden
set noerrorbells
set smartindent
set title

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

set autoread
set nowrap
set noswapfile
set nobackup
set undofile
set nofoldenable
if has('persistent_undo')
  set undodir=~/.vim/undodir
  set undofile
endif

set clipboard=unnamedplus

set incsearch
set termguicolors
set scrolloff=5
set signcolumn=yes
set isfname+=@-@

set mouse=a

set cmdheight=1

set updatetime=50
set shortmess+=c

set splitright
set splitbelow

set noshowmode

set confirm
set lazyredraw
set ttyfast
set nomodeline
set syntax

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

nnoremap j gj
nnoremap k gk

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

nnoremap <silent> <C-h> :call WinMove('h')<CR>
nnoremap <silent> <C-j> :call WinMove('j')<CR>
nnoremap <silent> <C-k> :call WinMove('k')<CR>
nnoremap <silent> <C-l> :call WinMove('l')<CR>


" Git commands
" nnoremap <silent><leader>gl :Commits<CR>
nnoremap <silent><leader>gs :Git<CR>
 " Branch
" nnoremap <silent><leader>gb :Git branch<CR>
" Commit
nnoremap <silent><leader>gc :Git commit<CR>
" Merge
nnoremap <leader>gm :Git merge 
 
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
endfunction

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Use completon-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
" " Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:completion_enable_auto_popup = 1

nnoremap <F5> :UndotreeToggle<CR>

" FZF
" nnoremap <Leader>fw :Rg<CR>
" nnoremap <Leader>fg :GFiles<CR>
" nnoremap <Leader>ff :Files<CR>
" nnoremap <Leader>fl :Lines<CR>
" nnoremap <Leader>fb :Buffers<CR>

" Find files using Telescope with lua functions
" Git
nnoremap <Leader>gl <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap <Leader>gb <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <Leader>ts <cmd>lua require('telescope.builtin').git_status()<cr>
" Find
nnoremap <Leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <Leader>fg <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <Leader>fi <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <Leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <Leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <Leader>fp <cmd>lua require('telescope.builtin').commands()<cr>
nnoremap <Leader>fq <cmd>lua require('telescope.builtin').quickfix()<cr>
nnoremap <Leader>fm <cmd>lua require('telescope.builtin').marks()<cr>
nnoremap <Leader>ft <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <Leader>e <cmd>lua require('telescope.builtin').file_browser()<cr>
" nnoremap <Leader>fd <cmd>lua require('telescope.builtin').live_grep(search_dirs{})<cr>
nnoremap <Leader>tt :TodoTrouble<cr>
nnoremap <Leader>td :TodoTelescope<cr>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

augroup godev
    autocmd!
    " Shorties
    autocmd FileType go nnoremap <Leader>ee oif err != nil {<CR>log.Error().Err(err)<CR>}<CR><esc>kk^I<esc>
    autocmd FileType go nnoremap <Leader>mt o{<CR>name: "",<CR>args: args{<esc>o<esc>o},<esc>o},<esc>kkkkci"

    " Vim-Go Bindings
    autocmd FileType go nnoremap gt :GoTest<CR>
    autocmd FileType go nnoremap gtf :GoTestFunc<CR>
    autocmd FileType go nnoremap gmt :GoTests<CR>
    autocmd FileType go nnoremap gta :GoTestsAll<CR>
    autocmd FileType go nnoremap gv :GoVet<CR>
    autocmd FileType go nnoremap gd :GoDef<CR>
    autocmd FileType go nnoremap <Leader>gt :!go test -v ./...<CR>
    autocmd FileType go nnoremap <Leader>gb :!go test -v --bench . --benchmem<CR>
    autocmd FileType go nnoremap <Leader>gr :GoRun %<CR>

    autocmd FileType go nnoremap <Leader>dt :DlvTest<CR>
    autocmd FileType go nnoremap <Leader>db :DlvAddBreakpoint<CR>
    autocmd FileType go nnoremap <Leader>dca :DlvClearAll<CR>

    autocmd FileType go nnoremap gtt :vsplit %:r_test.go<CR>

    autocmd FileType go let g:delve_backend = 'native'

    " Language server
    autocmd FileType go let g:go_gpls_enabled=1
    autocmd FileType go let g:go_def_mapping_enabled = 0
    autocmd FileType go let g:go_fmt_command = "goimports"
    autocmd FileType go let g:go_def_mode = "gopls"
    autocmd FileType go let g:go_info_mode = "gopls"
    autocmd FileType go let g:go_auto_type_info = 0
    autocmd FileType go let g:go_auto_sameids = 0
augroup END

" augroup lispy
"     autocmd!

"     " only load lispy-plugins for lispy-langs
"     " how do you do that?

"     autocmd FileType racket 
" augroup end

" WhichKey
" set timeoutlen=800i
