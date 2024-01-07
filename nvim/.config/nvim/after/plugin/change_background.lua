function ChangeBackground()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.cmd(":silent !~/Pictures/terminal-background-photos/nvim_background_script.sh")

end


ChangeBackground()
