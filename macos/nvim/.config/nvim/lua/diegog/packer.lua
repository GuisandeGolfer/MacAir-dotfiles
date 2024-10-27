-- update Packer:
-- :so
-- :PackerSync

-- update treesitter
-- :TSUpdate

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  use({
    "L3MON4D3/LuaSnip",
    tag = "v2.*",
    run = "make install_jsregexp",
  })

  -- Packer
  use({
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup({
        api_key_cmd = "pass show api/chatgpt"
      })
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim"
    }
  })
  -- nvim-surround

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  })

  use({
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- optional
    },
    config = function()
      require("nvim-tree").setup({
        -- configuration goes here: find opts with ":h nvim-tree" in neovim
      })
    end,
  })
  -- obsidian plugin
  --
  use({
    "epwalsh/obsidian.nvim",
    tag = "*", -- recommended, use latest release instead of latest commit
    requires = {
      -- Required.
      "nvim-lua/plenary.nvim",
      -- see below for full list of optional dependencies 👇
    },
    config = function()
      require("obsidian").setup({
        workspaces = {
          {
            name = "personal",
            path = "/Users/diegoguisande/Library/Mobile Documents/iCloud~md~obsidian/Documents/Second Brain/PARA",
          },
        },

        ---@param url string
        follow_url_func = function(url)
          -- Open the URL in the default web browser.
          vim.fn.jobstart({ "open", url }) -- Mac OS
        end,

        new_notes_location = "current_dir",

        daily_notes = {
          folder = "Areas/DailyNotes",
          template = "Daily Note Template",
        },
      })
    end,
  })

  -- floating terminal
  use("numToStr/FTerm.nvim")

  --zen mode

  use("folke/zen-mode.nvim")

  -- fun utilities
  use("numToStr/Comment.nvim")

  use("windwp/nvim-autopairs")

  use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    -- or                            , branch = '0.1.x',
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  use({
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      vim.cmd("colorscheme catppuccin")
    end,
  })

  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

  use("nvim-treesitter/playground")

  use("ThePrimeagen/harpoon")

  use({
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          python = { "autopep8" },
          javascript = { "prettier" },
          typescript = { "prettier" },
          javascriptreact = { "prettier" },
          typescriptreact = { "prettier" },
          svelte = { "prettier" },
          css = { "prettier" },
          html = { "prettier" },
          json = { "prettier" },
          yaml = { "prettier" },
          markdown = { "prettier" },
          graphql = { "prettier" },
          lua = { "stylua" },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_format = "fallback",
          async = false,
        },
      })
    end,
  })

  use("mbbill/undotree")

  use("tpope/vim-fugitive")

  use({
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    requires = {
      --- Uncomment the two plugins below if you want to manage the language servers from neovim
      --- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      -- LSP Support
      { "neovim/nvim-lspconfig" },
      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "L3MON4D3/LuaSnip" },
    },
  })
end)
