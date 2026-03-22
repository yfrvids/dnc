vim.opt.ruler = false
vim.o.laststatus = 0
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.keymap.set('n', 'u', ':keepjumps normal! ggVG<CR>')
vim.opt.signcolumn = "yes"

--vim.opt.nocompatible = true
vim.opt.encoding = "UTF-8"
vim.opt.syntax = "on"
vim.opt.showmode = false

vim.opt.ignorecase = true
vim.opt.filetype = "plugin"
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.showmatch = true
vim.opt.hidden = true
vim.opt.backspace = "indent,eol,start"
vim.opt.wildmenu = true

vim.opt.hlsearch = false
vim.opt.wrap = false 
vim.opt.linebreak = true
vim.opt.list = false

-- Activar resaltado de línea de cursor
vim.opt.cursorline = true
vim.cmd('highlight CursorLine guibg=#3c3836')
