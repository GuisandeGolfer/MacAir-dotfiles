return {
  "catppuccin/nvim",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme catppuccin")
    require("catppuccin").setup({
      flavor = "mocha",
      transparent_background = true,
      styles = {
        comments = { "italic" }
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        treesitter = true,
        nvimtree = true,
      },
    })
    vim.cmd("colorscheme catppuccin")
  end
}
