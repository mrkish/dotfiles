set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'rktjmp/lush.nvim'
" Plug 'shaunsingh/nord.nvim'
" Plug 'shaunsingh/moonlight.nvim'
" Plug 'npxbr/gruvbox.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'eddyekofo94/gruvbox-flat.nvim'
" Plug 'folke/tokyonight.nvim'
" Plug 'Yggdroot/indentLine'
" Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'mhinz/vim-startify'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'folke/lualine.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'folke/which-key.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'folke/trouble.nvim'
Plug 'folke/zen-mode.nvim'
Plug 'yamatsum/nvim-nonicons'
Plug 'nvim-telescope/telescope-fzf-writer.nvim'
" Plug 'ray-x/lsp_signature.nvim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': ['go']}
Plug 'sebdah/vim-delve', {'for': ['go']}
Plug 'buoto/gotests-vim', {'for': ['go']}

Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree' 

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'guns/vim-sexp', {'for': ['racket', 'scheme']}
Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': ['racket', 'scheme']}

" Plug 'frazrepo/vim-rainbow'
" Plug 'unblevable/quick-scope'
Plug 'windwp/nvim-autopairs'
" Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
" Plug 'mhinz/vim-grepper'

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

Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'kevinhwang91/nvim-bqf'

" Plug 'vimwiki/vimwiki'
" Plug 'michal-h21/vim-zettel'
" Plug 'michal-h21/vimwiki-sync'

Plug 'lervag/wiki.vim'
Plug 'lervag/lists.vim'

call plug#end()

" Enable fzf
set rtp+=~/.fzf

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

nnoremap <Leader>fw :Rg<CR>
nnoremap <Leader>fg :GFiles<CR>
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>fl :Lines<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>fp :Commands<CR>

nmap <silent><Leader>n :NERDTreeToggle<Enter>

" NERDTree
let NERDTreeShowLineNumbers=1
let NERDTreeRelativeNumbers=1
let NERDTreeWinPos=1
let NERDTreeAutoDeleteBuffer = 1


" require'gopls'
" buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
" TreeSitter config
" buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
" buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
" buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
" buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
" buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
" buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
" buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
" buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
" buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
" buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
" buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
" buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
" buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
" buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
" buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
" buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
"
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
    file_ignore_patterns = {'vendor/'},
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
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 0,
    width = 0.65,
    preview_cutoff = 120,
    results_height = 1,
    results_width = 0.55,
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

  require("zen-mode").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }

 require("todo-comments").setup {
 -- your configuration comes here
 -- or leave it empty to use the default settings
 -- refer to the configuration section below
 }

require('lualine').setup{
  options = {
   theme = 'gruvbox-flat'
  }
}
--  cfg = {
--   bind = true, -- This is mandatory, otherwise border config won't get registered.
--                -- If you want to hook lspsaga or other signature handler, pls set to false
--   doc_lines = 2, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
--                  -- set to 0 if you DO NOT want any API comments be shown
--                  -- This setting only take effect in insert mode, it does not affect signature help in normal
--                  -- mode
-- 
--   floating_window = true, -- show hint in a floating window, set to false for virtual text only mode
--   hint_enable = true, -- virtual hint enable
--   hint_prefix = "🐼 ",  -- Panda for parameter
--   hint_scheme = "String",
--   use_lspsaga = false,  -- set to true if you want to use lspsaga popup
--   hi_parameter = "Search", -- how your parameter will be highlight
--   handler_opts = {
--     border = "shadow"   -- double, single, shadow, none
--   },
--   -- deprecate !!
--   -- decorator = {"`", "`"}  -- this is no longe needed as nvim give me a handler and it allow me to highlight active parameter in floating_window
-- 
--  }
-- 
-- require'lsp_signature'.on_attach(cfg)

require('nvim-autopairs').setup()

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF
