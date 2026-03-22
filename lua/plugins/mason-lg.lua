require("mason-lspconfig").setup({
    ensure_installed = {
        'csharp_ls',
        'omnisharp',
        --'lua_ls',
        --'texlab',
        --'pyright', -- Deltanvim Python LSP
        --'pylint', -- Deltanvim Python Linter
        --'black', -- Deltanvim Python Formatter #1
        --'isort', -- Deltanvim Python Formatter #2
        --'gopls', -- (gopls)
        --'html',
        --'emmet_language_server',
        --'cssls', -- Css, Scss, Less
        --'tsserver', -- Ts, Js
        --'jsonls',
        --'omnisharp', -- C#
        --'angularls',
        --'vuels',
        --'sqlls',
	--'pyright',
	--'clangd',
    },
    automatic_installation = true,
})
