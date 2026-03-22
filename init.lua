vim.g.mapleader = " "

vim.o.relativenumber = true
vim.o.number = true
vim.opt.termguicolors = true

require('config.lazy')

-- general
require('plugins.keymaps')
require('plugins.environment')
require('plugins.autosave')
require('plugins.autopairs')
require('plugins.dnvimdashboard')

-- apariencia
require('plugins.themes')
require('plugins.sttuslinenvim')

-- lg/lsp
require('plugins.mason-global')
require('plugins.mason-lg')
require('plugins.l-lspzero')
require('plugins.lsplightbulbdeltanvim')

--plugins
require('plugins.toggleterminal')
require('plugins.tree')
--require('plugins.treesitter')
require('plugins.scrollbarnvim')
require('plugins.gitsignsnvim')
require('plugins.diagflownvim')
require('plugins.nvimsatellite')
require('plugins.nvimtrouble')
require('plugins.nulllsnvim')
require('plugins.peekdeltanvim')
require('plugins.cmp')


