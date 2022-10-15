local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- PLUGINS
return require('packer').startup(function(use)

-- Neovim general functionality and apperence
use 'wbthomason/packer.nvim' -- Packer manages itself
use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in neovim   
use 'nvim-lua/plenary.nvim' -- Useful Lua functions used by many plugins
use 'goolord/alpha-nvim' -- Neovim dashboard
use 'kyazdani42/nvim-tree.lua' --NvimTree file manager
use "akinsho/bufferline.nvim" --buffer (tabs)

-- Status Line
use 'ryanoasis/vim-devicons'
use 'vim-airline/vim-airline'
--use 'nvim-lualine/lualine.nvim' -- lualine

--Programming
use "windwp/nvim-autopairs" --autopairs
use "numToStr/Comment.nvim"
use "JoosepAlviste/nvim-ts-context-commentstring"
use 'lukas-reineke/indent-blankline.nvim' --shows line indendation
use 'https://github.com/ap/vim-css-color.git' --CSS colors
use "lewis6991/gitsigns.nvim" --Git indication
use "akinsho/toggleterm.nvim"

--debugging
use 'mfussenegger/nvim-dap'

-- Telescope
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

-- Treesitter
use {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate'
}

--cmp plugins
use "hrsh7th/nvim-cmp" -- completion plugin
use "hrsh7th/cmp-buffer" -- buffer completions
use "hrsh7th/cmp-path" -- path completions
use "hrsh7th/cmp-cmdline" -- cmdline completions
use "saadparwaiz1/cmp_luasnip" -- snippet completions
use "hrsh7th/cmp-nvim-lsp" -- LSP completion for cmp

-- language servers
use 'neovim/nvim-lspconfig' -- enable LSP
use 'williamboman/nvim-lsp-installer' -- language server installer
use 'simrat39/rust-tools.nvim'

-- Colorschemes
use 'EdenEast/nightfox.nvim'

end)
 
