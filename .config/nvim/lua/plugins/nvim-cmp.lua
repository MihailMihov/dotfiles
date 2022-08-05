local cmp = require("cmp")

cmp.setup {
  experimental = {
    ghost_text = true,
  },
  mapping = require("mappings.nvim-cmp"),
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  sources = {
    { name = "buffer" },
    { name = "nvim_lsp" },
    { name = "path" },
    { name = 'nvim_lsp_signature_help' },
    { name = "nvim_lua" },
    { name = "crates" },
  },
}

cmp.event:on(
  "confirm_done",
  require("nvim-autopairs.completion.cmp").on_confirm_done()
)
