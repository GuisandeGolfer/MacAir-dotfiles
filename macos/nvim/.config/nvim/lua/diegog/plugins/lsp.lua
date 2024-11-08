local lsp_zero = require('lsp-zero')

-- lsp.preset("recommended")

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-space>'] = cmp.mapping.complete(),
})

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
      'eslint',
      'rust_analyzer',
      'pyright',

  },

  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  }
})

lsp_zero.setup({
    mapping = cmp_mappings
})

lsp_zero.setup()

