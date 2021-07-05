set nocompatible
filetype plugin indent off  " required

call plug#begin('~/.vim/plugged')

" ----- Language support -----
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': ['go']}
Plug 'sebdah/vim-delve', {'for': ['go']}
Plug 'buoto/gotests-vim', {'for': ['go']}
" Plug 'neovim/go-client'
" Plug 'zchee/nvim-go', { 'do': 'make'}

" Plug 'rust-lang/rust'
" Plug '~/.vim/plugged/mq2-syntax'
" Plug 'Olical/conjure'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'neovim/nvim-lspconfig'
Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-lsputils'
Plug 'nvim-lua/completion-nvim'
" Plug 'hrsh7th/nvim-compe'
Plug 'mbbill/undotree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" ----- Git -----
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'
Plug 'stsewd/fzf-checkout.vim'

" ----- TPOPE
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'guns/vim-sexp', {'for': ['racket', 'scheme']}
Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': ['racket', 'scheme']}

Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" ----- Notes  /  GTD  /  Org -----
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'oberblastmeister/neuron.nvim'
" Plug 'vimwiki/vimwiki'
" Plug 'michal-h21/vim-zettel'
" Plug 'michal-h21/vimwiki-sync'

" ----- Themes -----
" Plug 'gruvbox-community/gruvbox'
Plug 'shaunsingh/nord.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'eddyekofo94/gruvbox-flat.nvim'
Plug 'npxbr/gruvbox.nvim'
Plug 'rmagatti/goto-preview'
" Plug 'rktjmp/lush.nvim'
" Plug 'savq/melange'
" Plug 'novakne/kosmikoa.nvim'
" Plug 'marko-cerovac/material.nvim'
" Plug 'sainnhe/edge'
" Plug 'theniceboy/nvim-deus'
" Plug 'Th3Whit3Wolf/space-nvim'
" Plug 'shaunsingh/moonlight.nvim'
" Plug 'folke/tokyonight.nvim'

" ----- UI Changes -----
" Plug 'unblevable/quick-scope'
Plug 'kevinhwang91/nvim-bqf'
Plug 'mhinz/vim-startify'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'folke/lualine.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'folke/which-key.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'folke/trouble.nvim'
Plug 'yamatsum/nvim-nonicons'
Plug 'nvim-telescope/telescope-fzf-writer.nvim'
Plug 'scrooloose/nerdtree' 

call plug#end()

" Load keymappings
" source ~/.vim/settings.vim

" Load functions
" source ~/.vim/func.vim

lua <<EOF

local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

-- Mappings.
local opts = { noremap=true, silent=true }
  -- Set some keybinds conditional on server capabilities
  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  end
  if client.resolved_capabilities.document_range_formatting then
    buf_set_keymap("v", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
  end

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
end

vim.lsp.handlers['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
vim.lsp.handlers['textDocument/references'] = require'lsputil.locations'.references_handler
vim.lsp.handlers['textDocument/definition'] = require'lsputil.locations'.definition_handler
vim.lsp.handlers['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
vim.lsp.handlers['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
vim.lsp.handlers['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
vim.lsp.handlers['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
vim.lsp.handlers['workspace/symbol'] = require'lsputil.symbols'.workspace_handler

require'lspconfig'.gopls.setup{on_attach=require'completion'.on_attach}

require'telescope'.setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_position = "bottom",
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_defaults = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {'vendor/'},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 0,
    width = 0.75,
    preview_cutoff = 120,
    results_height = 1,
    results_width = 0.7,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
    extensions = {
        fzf_writer = {
            minimum_grep_characters = 2,
            minimum_files_characters = 2,
            use_highlighter = true,
        }
    }
  }
}
require('goto-preview').setup {}

 require("todo-comments").setup {
 -- your configuration comes here
 -- or leave it empty to use the default settings
 -- refer to the configuration section below
 }

 require('lualine').setup{
 -- extensions={quickfix,fzf}
     options={
         theme='gruvbox-flat'
     }
 }

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF
