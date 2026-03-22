require("trouble").setup {
    modes = {
        symbols = {
            win = {
                position = "right",
                size = 1,
            },
        },
    },
}

-- Mapeo para alternar la visualización de símbolos con 'ts'
vim.api.nvim_set_keymap('n', 'ts', '<cmd>Trouble symbols toggle<cr>', {silent = true, noremap = true})

-- Mapeo para alternar la visualización de diagnósticos con 'tt'
vim.api.nvim_set_keymap('n', 'tt', '<cmd>Trouble diagnostics toggle<cr>', {silent = true, noremap = true})
