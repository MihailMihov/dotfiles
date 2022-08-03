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
    { name = "nvim_lsp", max_item_count = 30 },
    { name = "path" },
    { name = "buffer" },
    { name = "nvim_lua" },
    { name = "latex_symbols" },
    { name = "treesitter" },
    { name = "luasnip" },
  },
}

cmp.event:on(
  "confirm_done",
  require("nvim-autopairs.completion.cmp").on_confirm_done()
)
