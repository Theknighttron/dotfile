require("polyhistor.remap")
require("polyhistor.set")

local augroup = vim.api.nvim_create_augroup
local ThePrimeagenGroup = augroup('ThePrimeagen', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

vim.filetype.add({
    extension = {
        templ = 'templ',
    }
})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({ "BufWritePre" }, {
    group = ThePrimeagenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd('LspAttach', {
    group = ThePrimeagenGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    end
})

-- Configure clipboard intergration
-- Check if xsel is executable
if vim.fn.executable("xsel") == 0 then
    -- Print a message if xsel is not found
    print("xsel not found, clipboard integration won't work")
else
    -- Configure clipboard integration settings
    vim.g.clipboard = {
        -- Set the clipboard name
        name = "xsel (Arch Linux)",
        -- Configure copy commands for both + and * registers
        copy = {
            ["+"] = 'xsel --clipboard --input',
            ["*"] = 'xsel --clipboard --input --primary',
        },
        -- Configure paste commands for both + and * registers
        paste = {
            ["+"] = (function()
                -- Execute xsel to paste from the clipboard
                return vim.fn.systemlist('xsel --clipboard --output')
            end),
            ["*"] = (function()
                -- Execute xsel to paste from the primary selection
                return vim.fn.systemlist('xsel --clipboard --output --primary')
            end),
        },
        -- Enable caching of clipboard contents
        cache_enabled = true
    }
end


vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
