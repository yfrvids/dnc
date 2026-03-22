require("toggleterm").setup{
    size = function(term)
        if term.direction == "horizontal" then
            return 10
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.5
        end
    end,
    -- Comandos de toggle sencillos
    open_mapping = [[<c-j>]],
    shade_terminals = true,
    start_in_insert = true,
    persist_size = true,
    direction = 'horizontal',--'vertical', --'horizontal', | 'tab', | 'float',
    close_on_exit = true,
    shell = vim.o.shell,
}
