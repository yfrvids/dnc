require('lspsaga').setup({
    lightbulb = {
        enable = true,
        sign = true,
        virtual_text = true,
        debounce = 10,
        sign_priority = 40,
    },
    ui = {
        border = 'single', --Border type, see :help nvim_open_win
        devicon = true, --Whether to use nvim-web-devicons
        title = true, --Show title in some float window
        expand = '⊞',
        collapse = '⊟',
        code_action = '💡',
        actionfix = ' ',
        lines = { '┗', '┣', '┃', '━', '┏' },
        --kind = {} --LSP kind custom table
        imp_sign = '󰳛 ' --Implement icon
        --scroll_down = '<C-f>'
        --scroll_up = '<C-b>'
    }
})

-- Asigna <leader>ca para abrir las acciones de código de lspsaga
vim.keymap.set("n", "<leader>as", "<cmd>Lspsaga code_action<CR>", { silent = true, noremap = true, desc = "Code Actions DeltaNvim" })
