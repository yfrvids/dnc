require("auto-save").setup {
    execution_message = {
        message = function()
            return (" ▶ saved at " .. vim.fn.strftime("%H:%M:%S"))
        end,
        dim = 0.18,
        cleaning_interval = 1250,
    },
}
