require('lspsaga').setup({
    finder = {
        methods = {
            'tyd' == 'textDocument/typeDefinition'
        }
    },
    vim.keymap.set("n", "C-j", "<Cmd>Lspsaga diagnostic_jump_next<cr>");
    vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<cr>");
    vim.keymap.set("n", "gd", "<Cmd>Lspsaga lsp_finder<cr>");
    vim.keymap.set("i", "<C-k>", "<Cmd>Lspsaga signature_help<cr>");
    vim.keymap.set("n", "gp", "<Cmd>Lspsaga preview_definition<cr>");
    vim.keymap.set("n", "gr", "<Cmd>Lspsaga rename<cr>");
})

