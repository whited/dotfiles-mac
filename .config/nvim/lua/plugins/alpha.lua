local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[                               __                ]],
	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}
dashboard.section.buttons.val = {
	dashboard.button("SPC n", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("SPC f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("SPC t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("SPC r", "  Recently used files", ":Telescope oldfiles <CR>"),
--	dashboard.button("SPC g", "  GitLab", ":e ~/GitLab/ <CR>"),
--	dashboard.button("SPC g 1", "       Projects", ":e ~/GitLab/mbfs/ <CR>"),
--	dashboard.button("SPC i", "  Notes", ":NvimTreeToggle ~/Videos/Notes <CR>"),
--	dashboard.button("SPC i 1", "       Video ideas", ":e ~/Videos/Notes/videoIdeas.txt <CR>"),
--	dashboard.button("SPC i 2", "       Video notes", ":e ~/Videos/Notes/videoNotes.txt <CR>"),   
--	dashboard.button("SPC i 3", "       Personal notes", ":e ~/Documents/Notes/personalNotes.txt <CR>"),
	dashboard.button("SPC c", "  Configuration files", ":e ~/.config/nvim/init.lua <CR>"),
--	dashboard.button("SPC c 1", "       Awesome", ":e ~/GitLab/mbfs/dotfiles/.config/awesome/rc.lua <CR>"),
--	dashboard.button("SPC c 2", "       Neovim", ":e ~/GitLab/mbfs/dotfiles/.config/nvim/init.lua <CR>"),
--	dashboard.button("SPC c 3", "       Qtile", ":e ~/GitLab/mbfs/dotfiles/.config/qtile/config.py <CR>"),
	dashboard.button("SPC q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "WhiteD"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)

