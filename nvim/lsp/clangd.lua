return {
  cmd = { 'clangd' },
  filetypes = { 'c', 'cpp' },
  root_markers = { '.clangd', 'compile_commands.json', '.git' },

  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd('BufWritePre', {
      group = vim.api.nvim_create_augroup('ClangdFormat' .. bufnr, { clear = true }),
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr, name = 'clangd', async = false })
      end,
    })
  end,
}
