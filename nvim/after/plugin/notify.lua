-- lua/config/notify.lua

-- Apply the configuration
local notify = require('notify')

notify.setup({
  opts = {
    stages = "static",
    timeout = 5000,
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
    on_open = function(win)
      vim.api.nvim_win_set_config(win, { zindex = 100 })
    end,
  },
})

-- Define autocmd group for VeryLazy
vim.cmd([[
  augroup NotifyOnVeryLazy
    autocmd!
    autocmd User VeryLazy lua require('notify')
  augroup END
]])
