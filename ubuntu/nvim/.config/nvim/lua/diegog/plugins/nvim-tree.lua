return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended setttings from nvim-tree docs
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1


    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
      },
      filters = {
        custom = {
          ".DS_STORE"
        },
      },
      git = {
        ignore = false,
      },
    })

    local keymap = vim.keymap

    -- set keymaps
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "open nvim-tree at the location of the current file"})
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "collapse all folders in nvim-tree"})
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "refresh the file tree inside of nvim-tree"})

  end

}
