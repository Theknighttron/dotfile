local bufferline = require('bufferline')
bufferline.setup{
    options = {
        style_preset = {
            bufferline.style_preset.no_italic,
            bufferline.style_preset.no_bold
        },
        mode = 'tabs',
        separator_style = 'slant',
        always_show_bufferline = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        color_icons = true
    },
    highlights = {
        separator = {
            guifg = "#073642",
            guibg = "002b36",
        },
        separator_selected = {
            guifg = "#073642"
        },
        background = {
            guifg = "#657b83",
            guibg = "#002b36",
        },
        buffer_selected = {
            guifg = "#fdf6e3",
            gui = "bold",
        },
        fill = {
            guifg = "#073642",

        }
    }
}

vim.api.nvim_set_keymap("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", {})
vim.api.nvim_set_keymap("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", {})
