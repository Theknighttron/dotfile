-- lua/config/flash.lua

-- Plugin options
local opts = {}

-- Plugin key mappings
local keys = {
  { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
  { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
  { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
  { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
  { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
}

-- Apply the configuration
local flash = require('flash')

-- Apply options
flash.setup(opts)

-- Apply key mappings using vim.keymap.set
for _, key in ipairs(keys) do
  vim.keymap.set(key.mode, key[1], key[2], { silent = true, desc = key.desc })
end
