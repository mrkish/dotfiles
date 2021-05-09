set path+=**

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

set wildmode=longest,list,full
set wildmenu

set wildignore+=*./vendor/*

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
set syntax
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

set background=dark
set termguicolors
set noshowmode

set confirm
set lazyredraw
set ttyfast
set nomodeline

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

function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
endfunction

augroup godev
    autocmd!
    " Go bindings
    autocmd FileType go nnoremap <Leader>gt :GoTest<CR>
    autocmd FileType go nnoremap <Leader>gr :GoRun %<CR>
    autocmd FileType go nnoremap <Leader>gv :GoVet<CR>
    autocmd FileType go nnoremap gd :GoDef<CR>
    autocmd FileType go nnoremap gd :GoDef<CR>
    autocmd FileType go nnoremap <Leader>dt :DlvTest<CR>
    autocmd FileType go nnoremap <Leader>db :DlvAddBreakpoint<CR>
    autocmd FileType go nnoremap <Leader>dca :DlvClearAll<CR>
    " Tests
    autocmd FileType go nnoremap gtt :vsplit %:r_test.go<CR>
    autocmd FileType go nnoremap gt :!go test -v ./...<CR>
    autocmd FileType go nnoremap <Leader>gt :GoTest<CR>
    autocmd FileType go nnoremap <Leader>gtf :GoTestFunc<CR>
    autocmd FileType go nnoremap <Leader>gmt :GoTests<CR>
    autocmd FileType go nnoremap <Leader>gta :GoTestsAll<CR>
    autocmd FileType go nnoremap <Leader>gb :!go test -v --bench . --benchmem<CR>

    autocmd FileType go let g:delve_backend = 'native'

    " Golang syntax highlighting
    autocmd FileType go let g:go_gpls_enabled=1
    autocmd FileType go let g:go_def_mapping_enabled = 0
    autocmd FileType go let g:go_highlight_operators = 1
    autocmd FileType go let g:go_highlight_functions = 1
    autocmd FileType go let g:go_highlight_methods = 1
    autocmd FileType go let g:go_highlight_function_parameters = 1
    autocmd FileType go let g:go_highlight_funciton_calls=1
    autocmd FileType go let g:go_highlight_types = 1
    autocmd FileType go let g:go_highlight_extra_types = 1
    autocmd FileType go let g:go_highlight_fields = 1
    autocmd FileType go let g:go_highlight_build_constraints = 1
    autocmd FileType go let g:go_highlight_variable_assignments = 1
    autocmd FileType go let g:go_highlight_variable_declarations = 1
    autocmd FileType go let g:go_highlight_generate_tags = 1
    autocmd FileType go let g:go_fmt_command = "goimports"
    autocmd FileType go let g:go_def_mode = "gopls"
    autocmd FileType go let g:go_info_mode = "gopls"
    autocmd FileType go let g:go_auto_type_info = 1
    autocmd FileType go let g:go_auto_sameids = 0
augroup END
