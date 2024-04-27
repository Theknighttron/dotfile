-- local on_attach = function(_, bufnr)





--     local nmap = function(keys, func, desc)
--         if desc then
--             desc = 'LSP: '.. desc
--         end

--         vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc})
--     end

--     nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
--     nmap('<leader>ca', vim.lsp.code_action, '[C]ode [A]ction')



--     nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
--     nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
--     nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
--     nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
--     nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
--     nmap('<leader>ds',require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
--     nmap('<leader>ws',require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')


--     nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
--     nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
--     nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
--     nmap('<leader>wl', function()
--         print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--     end, '[W]orkspace [L]ist Folders')

--     vim.api.nvim.buf_create_user_command(bufnr, 'Format', function(_)
--         if vim.lsp.buf.format then
--             vim.lsp.buf.format()
--         elseif vim.lsp.buf.formattin then
--             vim.lsp.buf.formatting()
--         end
--     end, { desc = 'Format current buffer with LSP' })
-- end



-- require('mason').setup()

-- local servers = { 'clangd', 'rust_analyzer', 'lua_ls', 'gopls' }


-- require('mason-lspconfig').setup {
--     ensure_installed = servers,
-- }

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- for _, lsp in ipairs(servers) do
--     require('lspconfig')[lsp].setup {
--         on_attach = on_attach,
--         capabilities = capabilities,
--     }
-- end


-- require('fidget').setup()
