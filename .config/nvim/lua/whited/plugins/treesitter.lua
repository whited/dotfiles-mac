-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- configure treesitter
treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
		disable = { "css" }, -- list of language that will be disabled
	},
	-- enable indentation
	indent = {
		enable = true,
		-- disable = {"python", "css"}
	},
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },

	autopairs = { enable = true },
	-- ensure these language parsers are installed
	-- alternatively, could say:  = "all"
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"toml",
		"html",
		"css",
		"markdown",
		"svelte",
		"graphql",
		"bash",
		"lua",
		"rust",
		"vim",
		"dockerfile",
		"gitignore",
	},
	-- auto install above language parsers
	auto_install = true,
})

-- Treesitter Folding
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
