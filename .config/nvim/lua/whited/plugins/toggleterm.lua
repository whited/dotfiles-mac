-- import plugin safely
local setup, toggleterm = pcall(require, "toggleterm")
if not setup then
	return
end

-- enable
toggleterm.setup()
