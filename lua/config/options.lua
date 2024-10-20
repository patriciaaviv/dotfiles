
vim.cmd([[autocmd VimEnter * if !argc() | Alpha | endif]])
-- vim.cmd([[autocmd VimEnter * lua require("auto-session").resume()]])


-- Enable line numbers
vim.o.number = true

-- Enable relative line numbers
vim.o.relativenumber = true

-- Set tab width and use spaces instead of tabs
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Set a more comfortable search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.hlsearch = true

-- Use system clipboard for paste operations
vim.o.clipboard = "unnamedplus"

-- Other settings
vim.o.showmatch = true
vim.o.ruler = true
vim.o.mouse = "a"

-- Set leader key
vim.g.mapleader = " "


