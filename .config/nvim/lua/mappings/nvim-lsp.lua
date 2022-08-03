local lsp = vim.lsp

local mappings_nvim_lsp = {}
function mappings_nvim_lsp.load()
  -- Navigation
  vim.keymap.set("n"        , "gCi",       lsp.buf.incoming_calls)
  vim.keymap.set("n"        , "gCo",       lsp.buf.outgoing_calls)
  vim.keymap.set("n"        , "gd",        lsp.buf.definition)
  vim.keymap.set("n"        , "gD",        lsp.buf.declaration)
  vim.keymap.set("n"        , "g{",        lsp.buf.implementation)
  vim.keymap.set("n"        , "gr",        lsp.buf.references)
  vim.keymap.set("n"        , "gS",        lsp.buf.document_symbol)
  vim.keymap.set("n"        , "gt",        lsp.buf.type_definition)
  vim.keymap.set("n"        , "gw",        lsp.buf.workspace_symbol)

  -- Documentation
  vim.keymap.set({"i", "n"} , "<C-k>",     lsp.buf.signature_help)
  vim.keymap.set("n"        , "K",         lsp.buf.hover)

  -- Diagnostics
  vim.keymap.set("n"        , "[d",        vim.diagnostic.goto_prev)
  vim.keymap.set("n"        , "]d",        vim.diagnostic.goto_next)
  vim.keymap.set("n"        , "<space>z",  vim.diagnostic.setloclist)
  vim.keymap.set("n"        , "<space>e",  vim.diagnostic.open_float)

  -- Refactoring
  vim.keymap.set("n"        , "<space>a",  lsp.buf.code_action)
  vim.keymap.set("n"        , "<space>rf", lsp.buf.formatting)
  vim.keymap.set("n"        , "<space>rn", lsp.buf.rename)

  -- Workspaces
  vim.keymap.set("n"        , "<space>wa", lsp.buf.add_workspace_folder)
  vim.keymap.set("n"        , "<space>wl", function()
    print(vim.inspect(lsp.buf.list_workspace_folders()))
  end)
  vim.keymap.set("n"        , "<space>wr", lsp.buf.remove_workspace_folder)
end

return mappings_nvim_lsp
