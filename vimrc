set regexpengine=1
set synmaxcol=1000
set nocompatible
set modelines=0

filetype off                  " required
filetype plugin indent on    " required 

call plug#begin('~/.vim/plugged')
" ----- Language support -----
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'buoto/gotests-vim',
Plug 'rust-lang/rust'
Plug 'Olical/conjure'
Plug 'buoto/gotests-vim'
Plug '~/.vim/plugged/mq2-syntax'
" Plug 'neoclide/coc.nvim', { 'do': 'yarn install --frozen-lockfile' }
" Plug 'dense-analysis/ale'
"
" ----- Git -----
Plug 'tpope/vim-fugitive'
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'
Plug 'stsewd/fzf-checkout.vim'
"
" ----- Usability / Misc
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'ap/vim-buftabline'
Plug 'frazrepo/vim-rainbow'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'unblevable/quick-scope'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdtree' 
Plug 'scrooloose/syntastic' 
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'vimwiki/vimwiki'
Plug 'michal-h21/vim-zettel'
" Plug 'michal-h21/vimwiki-sync'
"
" ----- Themes / Looks / Vanity -----
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
" Plug 'chuling/pure-material.vim'
" Plug 'morhetz/gruvbox'
Plug 'gruvbox-community/gruvbox'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'chuling/vim-equinusocio-material'
" Plug 'kristijanhusak/vim-hybrid-material'
" Plug 'shinchu/lightline-gruvbox.vim'
call plug#end()

" Enable fzf
set rtp+=~/.fzf

" fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
nnoremap <leader>gc :GBranch<CR>

" mhinz/vim-grepper
let g:grepper={}
let g:grepper.tools=["rg"]
xmap gr <plug>(GrepperOperator)

" setting Vim-Note directory
let g:notes_directories = ['~/Dropbox/Documents/Notes']

" Load keymappings
source ~/.vimsettings

" Load functions
source ~/.vimfunc
