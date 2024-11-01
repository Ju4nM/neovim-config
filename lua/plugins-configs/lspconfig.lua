local masonLspConfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

masonLspConfig.setup({
  ensure_installed = { "lua_ls", "pyright" }, -- Lista de servidores LSP a instalar automáticamente
})

-- Configurar nvim-cmp para que funcione con LSP
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(_, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  -- Mapeos de LSP
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)         -- Ir a la definición
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)              -- Mostrar documentación
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)    -- Ir a la implementación
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)    -- Renombrar símbolo
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- Mostrar acciones de código
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)        -- Buscar referencias
  vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)     -- Formatear código
end

local opts = { silent = true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, opts)

-- Configurar cada servidor LSP con capacidades de nvim-cmp
masonLspConfig.setup_handlers({
  function (server)
    lspconfig[server].setup({
      capabilities = capabilities,
      on_attach = on_attach
    })
  end
})
