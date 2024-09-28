-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/polyhistor/.cache/nvim/packer_hererocks/2.1.1725453128/share/lua/5.1/?.lua;/home/polyhistor/.cache/nvim/packer_hererocks/2.1.1725453128/share/lua/5.1/?/init.lua;/home/polyhistor/.cache/nvim/packer_hererocks/2.1.1725453128/lib/luarocks/rocks-5.1/?.lua;/home/polyhistor/.cache/nvim/packer_hererocks/2.1.1725453128/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/polyhistor/.cache/nvim/packer_hererocks/2.1.1725453128/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["conform.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["dart-vim-plugin"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/dart-vim-plugin",
    url = "https://github.com/dart-lang/dart-vim-plugin"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/nvimdev/dashboard-nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["flash.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/flash.nvim",
    url = "https://github.com/folke/flash.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    config = { "\27LJ\2\n;\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\fgruvbox\16colorscheme\bcmd\bvim\0" },
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.ai"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/mini.ai",
    url = "https://github.com/echasnovski/mini.ai"
  },
  ["mini.pairs"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/mini.pairs",
    url = "https://github.com/echasnovski/mini.pairs"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["noice.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-snippets"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/nvim-snippets",
    url = "https://github.com/garymjr/nvim-snippets"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/nvim-pack/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["persistence.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/persistence.nvim",
    url = "https://github.com/folke/persistence.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["ts-comments.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/ts-comments.nvim",
    url = "https://github.com/folke/ts-comments.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-flutter"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/vim-flutter",
    url = "https://github.com/thosakwe/vim-flutter"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-lsc"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/vim-lsc",
    url = "https://github.com/natebosch/vim-lsc"
  },
  ["vim-lsc-dart"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/vim-lsc-dart",
    url = "https://github.com/natebosch/vim-lsc-dart"
  },
  ["vim-tmux-navigator"] = {
    commands = { "TmuxNavigateLeft", "TmuxNavigateDown", "TmuxNavigateUp", "TmuxNavigateRight", "TmuxNavigatePrevious" },
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30config.vim_tmux_navigator\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/opt/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/polyhistor/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gruvbox
time([[Config for gruvbox]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\4\0\0066\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\fgruvbox\16colorscheme\bcmd\bvim\0", "config", "gruvbox")
time([[Config for gruvbox]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'TmuxNavigateUp', function(cmdargs)
          require('packer.load')({'vim-tmux-navigator'}, { cmd = 'TmuxNavigateUp', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-tmux-navigator'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TmuxNavigateUp ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TmuxNavigateRight', function(cmdargs)
          require('packer.load')({'vim-tmux-navigator'}, { cmd = 'TmuxNavigateRight', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-tmux-navigator'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TmuxNavigateRight ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TmuxNavigatePrevious', function(cmdargs)
          require('packer.load')({'vim-tmux-navigator'}, { cmd = 'TmuxNavigatePrevious', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-tmux-navigator'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TmuxNavigatePrevious ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TmuxNavigateLeft', function(cmdargs)
          require('packer.load')({'vim-tmux-navigator'}, { cmd = 'TmuxNavigateLeft', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-tmux-navigator'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TmuxNavigateLeft ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TmuxNavigateDown', function(cmdargs)
          require('packer.load')({'vim-tmux-navigator'}, { cmd = 'TmuxNavigateDown', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-tmux-navigator'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('TmuxNavigateDown ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)


_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
