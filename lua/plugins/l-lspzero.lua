local capabilities = vim.lsp.protocol.make_client_capabilities()
local cmp_nvim_lsp = require('cmp_nvim_lsp')
capabilities = cmp_nvim_lsp.default_capabilities()

-- Función para encontrar la raíz del proyecto
local function find_project_root()
  local f = vim.api.nvim_buf_get_name(0)
  
  -- Buscar marcadores comunes
  local root_patterns = { '.git', '.texlabroot', '.latexmkrc', 'latexmkrc' }
  
  for _, pattern in ipairs(root_patterns) do
    local root = vim.fs.find(pattern, { path = f, upward = true })[1]
    if root then
      return vim.fs.dirname(root)
    end
  end
  
  -- Si no encuentra nada, usar el directorio del archivo actual
  return vim.fs.dirname(f)
end

-- Configuración TeXLab
vim.lsp.config['texlab'] = {
  cmd = { 'texlab' },
  filetypes = { 'tex', 'plaintex', 'bib' },
  root_markers = { '.git', '.texlabroot', '.latexmkrc', 'latexmkrc' },
  capabilities = capabilities,
  settings = {
    texlab = {
      build = {
        onSave = true,
        executable = "latexmk",
        args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
      },
      bibtexFormatter = "texlab",
      chktex = {
        onEdit = false,
        onOpenAndSave = false,
      },
      diagnosticsDelay = 300,
      formatterLineLength = 80,
      forwardSearch = {
        args = {}
      },
      latexFormatter = "latexindent",
      latexindent = {
        modifyLineBreaks = false
      }
    }
  },
  
  on_attach = function(client, bufnr)
    -- Keymaps (usando API moderna)
    local opts = { buffer = bufnr, remap = false }
    
    vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
    vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts)
    vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, opts)
    vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set('n', '<C-k>', function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set('n', '<space>rn', function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set('n', '<space>ca', function() vim.lsp.buf.code_action() end, opts)
    
    -- Diagnostics
    vim.keymap.set('n', '[d', function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set('n', ']d', function() vim.diagnostic.goto_next() end, opts)
  end,
}

-- Habilitar TeXLab
vim.lsp.enable('texlab')

-- Configuración de Lua Language Server
vim.lsp.config['luals'] = {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc', '.git' },
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

-- Habilitar LuaLS
vim.lsp.enable('luals')

-- Configuración para Roslyn.nvim
vim.lsp.config("roslyn", {
    on_attach = function()
        print("This will run when the server attaches!")
    end,
    settings = {
        ["csharp|inlay_hints"] = {
            csharp_enable_inlay_hints_for_implicit_object_creation = true,
            csharp_enable_inlay_hints_for_implicit_variable_types = true,
        },
        ["csharp|code_lens"] = {
            dotnet_enable_references_code_lens = true,
        },
    },
})
