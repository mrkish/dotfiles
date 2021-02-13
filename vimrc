set regexpengine=1
set synmaxcol=1000
set nocompatible
set modelines=0

" source ~/Downloads/generate.vim

filetype plugin indent off  " required

call plug#begin('~/.vim/plugged')
" ----- Language support -----
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'buoto/gotests-vim',
Plug 'rust-lang/rust'
Plug '~/.vim/plugged/mq2-syntax'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" Plug 'Olical/conjure'
" Plug 'neoclide/coc.nvim', { 'do': 'yarn install --frozen-lockfile' }
" Plug 'dense-analysis/ale'
"
" ----- Git -----
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'
Plug 'stsewd/fzf-checkout.vim'
"
" ----- Usability / Misc
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
" Plug 'ap/vim-buftabline'
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
" Plug 'kevinhwang91/nvim-bqf'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'michal-h21/vimwiki-sync'
"
" ----- Themes / Looks / Vanity -----
Plug 'mhinz/vim-startify'
" Plug 'itchyny/lightline.vim'
Plug 'doums/barow'
Plug 'doums/barowGit'
Plug 'doums/barowLSP'
" Plug 'chuling/pure-material.vim'
" Plug 'morhetz/gruvbox'
Plug 'gruvbox-community/gruvbox'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'chuling/vim-equinusocio-material'
" Plug 'kristijanhusak/vim-hybrid-material'
" Plug 'shinchu/lightline-gruvbox.vim'
call plug#end()

filetype plugin indent on    " required 

" Enable fzf
set rtp+=~/.fzf

" fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
nnoremap <leader>gc :GBranch<CR>

" barow modules
let g:barow = {
      \  'modules': [
      \    [ 'barowGit#branch', 'BarowHint' ],
      \    [ 'barowLSP#error', 'BarowError' ],
      \    [ 'barowLSP#warning', 'BarowWarning' ],
      \    [ 'barowLSP#info', 'BarowInfo' ],
      \    [ 'barowLSP#hint', 'BarowHint' ],
      \    [ 'barowLSP#coc_status', 'StatusLine' ],
      \    [ 'barowLSP#ale_status', 'StatusLine' ]
      \  ]
      \}

" mhinz/vim-grepper
let g:grepper={}
let g:grepper.tools=["rg"]
xmap gr <plug>(GrepperOperator)

" setting Vim-Note directory
let g:notes_directories = ['~/Dropbox/Documents/Notes']

" Load keymappings
source ~/.vimsettings.vim

" Load functions
source ~/.vimfunc.vim
