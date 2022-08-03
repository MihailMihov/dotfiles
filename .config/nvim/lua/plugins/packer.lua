require("packer").startup(function(use)
  use {"wbthomason/"        .. "packer.nvim"                }

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
  use {"ray-x/"             .. "cmp-treesitter"             }
 
  use {"nvim-treesitter/"   .. "nvim-treesitter",
    run = ":TSUpdate",
  }
  use {"nvim-treesitter/"   .. "nvim-treesitter-textobjects"}

  use {"sainnhe/"           .. "sonokai"                    }
end)
