-- lua/config/which-key.lua

-- Check if noice.nvim is installed
local has_noice = vim.fn.exists('##noice') == 1

-- Define the options function
local function setup_opts(opts)
    if has_noice then
        opts.defaults["<leader>sn"] = { name = "+noice" }
    end
end

-- Apply the configuration
require("which-key").setup({
    plugins = {
        spelling = true,
    },
    defaults = {
        mode = { "n", "v" },
        ["g"] = { name = "+goto" },
        ["gs"] = { name = "+surround" },
        ["z"] = { name = "+fold" },
        ["]"] = { name = "+next" },
        ["["] = { name = "+prev" },
        ["<leader><tab>"] = { name = "+tabs" },
        ["<leader>b"] = { name = "+buffer" },
        ["<leader>c"] = { name = "+code" },
        ["<leader>f"] = { name = "+file/find" },
        ["<leader>g"] = { name = "+git" },
        ["<leader>gh"] = { name = "+hunks" },
        ["<leader>q"] = { name = "+quit/session" },
        ["<leader>s"] = { name = "+search" },
        ["<leader>u"] = { name = "+ui" },
        ["<leader>w"] = { name = "+windows" },
        ["<leader>x"] = { name = "+diagnostics/quickfix" },
    },
    config = setup_opts,
})
