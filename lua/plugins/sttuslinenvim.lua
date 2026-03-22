require("sttusline").setup ({
    components = {
        "mode",
        "filename",
        "git-branch",
        "git-diff",
        "%=",
        "datetime",
        "diagnostics",
        "lsps-formatters",
        "copilot",
        "indent",
        "encoding",
        "pos-cursor",
        "pos-cursor-progress",
    },
})

local copilot = require("sttusline.components.copilot")

copilot.set_colors { fg = "#ECE81A" }

copilot.set_config {
    icons = {
        normal = "",
        error = "",
        warning = "",
        inprogress = "",
    },
}
