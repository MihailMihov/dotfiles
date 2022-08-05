require("packer").startup(function(use)
  use {"wbthomason/"        .. "packer.nvim"                }

  use {"nvim-lua/"          .. "plenary.nvim"               }

  use {"williamboman/"      .. "mason.nvim"                 }
  use {"williamboman/"      .. "mason-lspconfig.nvim"       }

  use {"windwp/"            .. "nvim-autopairs"             }
  use {"kylechui/"          .. "nvim-surround"		    }

  use {"neovim/"            .. "nvim-lspconfig"             }

  use {"hrsh7th/"           .. "nvim-cmp"                   }
  use {"hrsh7th/"           .. "cmp-buffer"                 }
  use {"hrsh7th/"           .. "cmp-nvim-lsp"               }
  use {"hrsh7th/"           .. "cmp-path"                   }
  use {"hrsh7th/"           .. "cmp-nvim-lsp-signature-help"}
  use {"hrsh7th/"           .. "cmp-nvim-lua"               }
  use {"saecki/"            .. "crates.nvim"                }

  use {"nvim-treesitter/"   .. "nvim-treesitter",
    run = function()
      require('nvim-treesitter.install').update({
        with_sync = true,
      })
    end,
  }
  use {"nvim-treesitter/"   .. "nvim-treesitter-textobjects"}

  use {"lukas-reineke/"     .. "indent-blankline.nvim"      }

  use {"sainnhe/"           .. "sonokai"                    }
end)
