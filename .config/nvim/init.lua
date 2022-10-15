--
-- Great source of configs that were borrowed heavily from:
--   https://gitlab.com/mbfs/dotfiles
--

-- To help prevent issues between netrw and nvem-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- General functionality and appearance 
require('globals/options')
require('globals/keybindings')
require('plugins/packer')
require('colorschemes-config/nightfox')
require('plugins/telescope-config')

require "plugins.alpha"
require "plugins.nvim-tree"
require "plugins.bufferline"

-- Language Server and completion engine stuff
require "plugins.cmp"
require "plugins.lsp"

-- Programming
require "plugins.autopairs"
require "plugins.treesitter"
require "plugins.gitsigns"
require "plugins.comments"
require "plugins.toggleterm"

