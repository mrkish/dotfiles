set path+=**

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

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

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



nnoremap <leader>en <cmd>lua require('tele').edit_neovim()<CR>

" Git commands
" Log
nnoremap <silent><leader>gl :Commits<CR>
" Status
nnoremap <silent><leader>gs :Git<CR>
 " Branch
" nnoremap <silent><leader>gb :Git branch<CR>
" Commit
nnoremap <silent><leader>gc :Git commit<CR>
" Merge
nnoremap <leader>gm :Git merge 
 
" nnoremap <silent> gj :let _=&lazyredraw<CR>:set lazyredraw<CR>/\%<C-R>=virtcol(".")<CR>v\S<CR>:nohl<CR>:let &lazyredraw=_<CR>
" nnoremap <silent> gk :let _=&lazyredraw<CR>:set lazyredraw<CR>?\%<C-R>=virtcol(".")<CR>v\S<CR>:nohl<CR>:let &lazyredraw=_<CR>

function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
endfunction

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
" " Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:completion_enable_auto_popup = 1

nnoremap <F5> :UndotreeToggle<CR>

" Find files using Telescope with lua functions
nnoremap <Leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <Leader>fg <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <Leader>fi <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <Leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <Leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

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
