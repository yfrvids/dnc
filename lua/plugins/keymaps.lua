vim.api.nvim_set_keymap("n", "n", "nzzzv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "N", "Nzzzv", {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '5', ':source%<CR>', {noremap = true}) -- Refrescar IDE
vim.api.nvim_set_keymap('n', '7', '/', {noremap = true}) -- Tecla en donde se encuentre el caracter / para activar modo comando
vim.api.nvim_set_keymap('n', '.', ':', {noremap = true}) -- Tecla en donde se encuentre el caracter / para activar modo comando

vim.api.nvim_set_keymap('i', 'ii', '<Esc>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>ii', ':w!<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>iq', ':wq<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>qq', ':q!<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'zz', 'u<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'ZZ', '<C-r><CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'PP', ':PackerInstall<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'PU', ':PackerSync<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-Right>', ':bn<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-Left>', ':bp<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<A-Up>", ":exe 'resize ' .. (winheight(0) * 5/4)<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<A-Down>", ":exe 'resize ' .. (winheight(0) * 4/5)<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<A-Right>", ":exe 'vertical resize ' .. (winwidth(0) * 5/4)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<A-Left>", "<Leader>Left :exe 'vertical resize ' .. (winwidth(0) * 4/5)<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "hh", ":vsplit<CR>", {silent = true}) -- Crear split horizontal
vim.api.nvim_set_keymap("n", "vv", ":split<CR>", {silent = true}) -- Crear split vertical

-- moverse entre los splits
vim.api.nvim_set_keymap("n", "<C-Left>", "<C-w>h", {silent = true})
vim.api.nvim_set_keymap("n", "<C-Down>", "<C-w>j", {silent = true})
vim.api.nvim_set_keymap("n", "<C-Up>", "<C-w>k", {silent = true})
vim.api.nvim_set_keymap("n", "<C-Right>", "<C-w>l", {silent = true})

vim.api.nvim_set_keymap("n", "<C-q>", ":lclose<bar>b#<bar>:bd #<CR>", {silent = true})
