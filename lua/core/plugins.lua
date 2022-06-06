-- vim:foldmethod=marker
---@diagnostic disable: different-requires
-- Automatically download packer.nvim if it doesn't exist
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then

  fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }
  vim.cmd "packadd packer.nvim"
end

-- Automatically run :PackerCompile after every time this file is changed
vim.api.nvim_create_augroup("packer_user_config", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {

  group = "packer_user_config",
  pattern = "plugins.lua",
  command = "source <afile> | PackerCompile",
})

local packer = require "packer"

-- Use packer.nvim to manage all of the plugins

return packer.startup {
  function(use)
    use { "wbthomason/packer.nvim" }

    -- *** editor *** --

    use {
      "neovim/nvim-lspconfig",
      config = function()
        require "editor.lspconfig"
      end,
    }
    use {
      "williamboman/nvim-lsp-installer",
      after = { "nvim-lspconfig", "cmp-nvim-lsp" },
    }

    use {
      'windwp/nvim-autopairs',
      config = function ()
        require "editor.autopairs"
      end,
    }

    use {
      "rafamadriz/friendly-snippets",
      event = { "InsertEnter", "CmdlineEnter" },
      --after = { "nvim-lspconfig", "nvim-cmp" }
    }

      -- the completion core
    use {
      "hrsh7th/nvim-cmp",
      after = "vim-vsnip",
      --event = "InsertEnter",
      config = function()
        require "editor.cmp"
      end,
    }

      -- completion source for system path
    use {
      "hrsh7th/cmp-path",
      after = { "nvim-cmp" }
    }

      -- completion source for lspconfig

    use {
      "hrsh7th/cmp-nvim-lsp",
      --event = "InsertEnter",
      after = { "nvim-cmp" }
    }


      -- completion source for word in current buffer
    use {
      "hrsh7th/cmp-buffer",
      after = { "nvim-cmp" }
    }


      -- completion source for vsnip snippet plugin
    use {
      "hrsh7th/cmp-vsnip",
      after = "nvim-cmp"
    }

      -- the snippet core
    use {
      "hrsh7th/vim-vsnip",
      after = { "friendly-snippets" }
    }

    use {
      "hrsh7th/cmp-cmdline",
      after = { "nvim-cmp" }
    }

    use {
      "yioneko/nvim-yati",
      requires = "nvim-treesitter/nvim-treesitter",
      ft = "py",
      after = "nvim-treesitter"
    }

    -- *** UI *** --
    use {
      "onsails/lspkind-nvim",
      config = function()
        require "ui.lspkind"
      end,
      event = "InsertEnter"
    }

    use {
      "ray-x/lsp_signature.nvim",
      after = { "nvim-lspconfig" },
    }
    use {
      "tami5/lspsaga.nvim",
      after = { "nvim-lspconfig", "nvim-cmp" },
    }

    use {
	    "nvim-treesitter/nvim-treesitter",
	    event = { "BufRead", "BufNewFile" },
        run = ":TSUpdate",
	    config = function ()
	        require "ui.treesitter"
	    end
    }

    use {
      "kyazdani42/nvim-web-devicons",
      after = { "impatient.nvim" },
    }

    -- Theme
    use {
      "glepnir/zephyr-nvim",
      config = function ()
        require "ui.theme"
      end,
      after = "nvim-treesitter"
    }

    use {
      "akinsho/nvim-bufferline.lua",
      config = function()
        require("ui.bufferline")
      end,
      --event = "BufRead",
      after = { "nvim-web-devicons" },
    }

    use {
      "NTBBloodbath/galaxyline.nvim",
      config = function ()
        require "ui.galaxyline"
      end,
      requires = 'kyazdani42/nvim-web-devicons',
      after = "nvim-web-devicons",
    }

    use {
      'lukas-reineke/indent-blankline.nvim',
      config = function ()
        require "ui.indent_blankline"
      end,
      event = { "BufRead", "BufNewFile" },
    }

    -- *** Tools *** --
    use { "lewis6991/impatient.nvim" }
    use {
        "nvim-lua/plenary.nvim",
        after = { "impatient.nvim" },
    }

    use {
        "ethanholz/nvim-lastplace",
        config = function ()
            require "tools.lastplace"
        end
    }

    use {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        config = function ()
            require "tools.telescope"
        end,
        requires = "nvim-lua/plenary.nvim"
    }

    use {
      "nathom/filetype.nvim",
      config = function ()
        require "tools.filetype"
      end
    }

    use {
      "simrat39/symbols-outline.nvim",
      cmd = "SymbolsOutline",
      config = function ()
        require "tools.symbolsoutline"
      end
    }

    use {
      "skywind3000/asyncrun.vim",
      cmd = { "AsyncRun" }
    }

    use {
      "skywind3000/asynctasks.vim",
      requires = "skywind3000/asyncrun.vim",
      cmd = { "AsyncTask" },
      config = function ()
        vim.g.asyncrun_open = 8
        vim.g.asynctasks_term_rows = 8
        vim.g.asynctasks_term_cols = 80
      end
    }

    use {
      "kyazdani42/nvim-tree.lua",
      config = function()
        require("tools.nvim_tree")
      end,
      requires = {
        'kyazdani42/nvim-web-devicons',
      },
      after = "nvim-web-devicons",
      cmd = {
        "NvimTreeFindFile",
        "NvimTreeToggle",
      },
    }

    use {
      "dstein64/vim-startuptime",
      cmd = "StartupTime"
    }

  end
}
