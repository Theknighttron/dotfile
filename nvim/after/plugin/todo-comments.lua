-- lua/config/todo-comments.lua

-- Apply the configuration
require('todo-comments').setup {}

-- Plugin key mappings
local keys = {
  { "]t", function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
  { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
  { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Todo (Trouble)" },
  { "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
  { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" },
  { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
}

-- Apply key mappings
for _, key in ipairs(keys) do
  vim.keymap.set("n", key[1], key[2], { desc = key.desc })
end

