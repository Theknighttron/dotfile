vim.g.mapleader = " "

-- open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- quite search higlight
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- highlight all text
vim.keymap.set("n", "<leader>aa", "ggVG")

-- Copy text from outside NeoVim and paste to NeoVim
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy text from inside NeoVim to outside
vim.keymap.set({ "n", "v" }, "<leader>y", [["+Y]])

-- Moving between windows
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-r>", "<C-w>r")

-- Split screen vertically
vim.keymap.set("n", "<leader>sv", "<C-w>v")

vim.keymap.set("n", "<leader>sh", "<C-w>s")

-- Save changes
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")

-- Quit NeoVim
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")

-- Save and quit NeoVim
vim.keymap.set("n", "<leader>wq", "<cmd>wq<CR>")

-- Quit NeoVim without saving changes
vim.keymap.set("n", "<leader>qq", "<cmd>q!<CR>")

-- nice highlight moves
vim.keymap.set("v", "J", ":m '>+5<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cursor jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep the Cursor in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace the current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make the file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })


-- Highlight when yanking (copying) text
-- Try it with `yap` in normal mode
-- See `help: vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("higlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
