-- nulllsnvim.lua
local null_ls = require('null-ls')

local status, null_ls = pcall(require, "null-ls")
if not status then
  vim.notify("null-ls (via none-ls) not found")
  return
end

null_ls.setup({
  sources = {
    -- DeltaNvim Python
    null_ls.builtins.formatting.black,  -- Formatter (Python)
    null_ls.builtins.diagnostics.mypy, -- Type checker (Python)
    null_ls.builtins.diagnostics.flake8, -- Linter (Python)

    -- DeltaNvim Lua
    --null_ls.builtins.diagnostics.etc, 
  },
})
