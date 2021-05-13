local lsp_config = require'lspconfig'
local lsp_status = require'lsp-status'
local lsp_completion = require'completion'
local lsp_saga = require'lspsaga'
local lsp_format = require'format'
-- enable snippets
vim.g['completion_enable_snippets'] = 'snippets.nvim'
vim.g['completion_auto_change_source'] = 1
-- called when a new lsp client attaches
local function on_attach(client)
        lsp_completion.on_attach(client)
        lsp_status.on_attach(client)
        if client.resolved_capabilities.document_formatting then
                lsp_format.buf_pre_save()
        end
end


local lsp_default_config = {on_attach = on_attach, capabilites = lsp_status.capabilities}
local servers = {
        clangd = {},
        --ccls = {},
        gopls = {
                cmd = {'gopls','--remote=auto'},
                capabilties = {
                        textDocuemnt = {
                                completion = 
                                        completionItem = {
                                                snippetSupport = true
                                        }
                                }
                        }
                },
                init_options = {
                        usePlaceholders = true,
                        completeUnimported = true
                }
        }

