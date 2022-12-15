-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	print("Failed to load mason")
	return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	print("Failed to load mason_lspconfig")
	return
end

-- import mason-null-ls plugin safely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	print("Failed to load mason_null_ls")
	return
end

-- enable mason
mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install
	-- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
	ensure_installed = {
		"taplo", -- TOML
		"rust_analyzer",
		"bashls",
		"tsserver",
		"html",
		"cssls",
		"tailwindcss",
		"sumneko_lua",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	-- https://github.com/jayp0521/mason-null-ls.nvim
	ensure_installed = {
		"prettier", -- ts/js formatter
		"stylua", -- lua formatter
		"eslint_d", -- ts/js linter
		"rustfmt", -- rust formatter
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})
