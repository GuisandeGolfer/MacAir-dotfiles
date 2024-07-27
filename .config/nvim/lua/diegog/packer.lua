-- update Packer: 
-- :so
-- :PackerSync

-- update treesitter
-- :TSUpdate

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use ({
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional
      },
  })
  -- obsidian plugin
  --
  

  -- floating terminal
  use "numToStr/FTerm.nvim"

  use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

  use('ThePrimeagen/harpoon')

  
end)
