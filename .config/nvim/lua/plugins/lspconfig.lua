local nvim_lsp = require("lspconfig")

local servers = {
  "bashls",
  "rust_analyzer",
  "sumneko_lua",
}

local function on_attach(client, bufnr)
  require("mappings.nvim-lsp").load()
end

local config_defaults = {}
local configs = {
  sumneko_lua = require("plugins.lspconfig.sumneko_lua"),
}

config_defaults = vim.tbl_extend("error", config_defaults, {
  capabilities = require("cmp_nvim_lsp").update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
  ),
})

for _, lsp in ipairs(servers) do
  local config = configs[lsp] or {}
  config.on_attach = on_attach
  config = vim.tbl_extend("keep", config, config_defaults)
  nvim_lsp[lsp].setup(config)
end
