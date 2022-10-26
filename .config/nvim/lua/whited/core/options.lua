local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.numberwidth = 4 -- set number column width to
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

opt.iskeyword:append("-") -- consider string-string as whole word

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.smartindent = true -- make indenting smarter again
opt.showtabline = 2 -- always show tabs

-- line wrapping & scrolling
opt.wrap = false -- disable line wrapping
opt.scrolloff = 5 -- is one of my fav
opt.sidescrolloff = 5

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.hlsearch = true -- highlight all matches on previous search pattern
opt.incsearch = true -- show matched string as a search command is typed

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark

-- command-bar
-- opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
opt.showmode = false -- we don't need to see things like -- INSERT -- anymore

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- file handling
opt.backup = false -- creates a backup file
opt.hidden = true -- keep file loaded when not in view (default: true)
opt.fileencoding = "utf-8" -- the encoding written to a file
opt.swapfile = false -- creates a swapfile
opt.undofile = true -- enable persistent undo
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
 
-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- misc others
opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
opt.conceallevel = 0 -- so that `` is visible in markdown files

opt.mouse = "a" -- allow the mouse to be used in neovim
opt.pumheight = 10 -- pop up menu height

opt.ttimeoutlen = 100 -- time to wait for a mapped sequence to complete (in milliseconds)
opt.updatetime = 300 -- faster completion (4000ms default)


-- todo: What does this do?
-- vim.opt.shortmess:append "c"
-- vim.cmd "set whichwrap+=<,>,[,],h,l
