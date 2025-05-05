return {
  "folke/snacks.nvim",

  opts = {
    dashboard = {
      preset = {
        header = [[
   ███╗   ██╗██╗   ██╗██╗███╗   ███╗
   ████╗  ██║██║   ██║██║████╗ ████║
   ██╔██╗ ██║██║   ██║██║██╔████╔██║
   ██║╚██╗██║██║   ██║██║██║╚██╔╝██║
   ██║ ╚████║╚██████╔╝██║██║ ╚═╝ ██║
   ╚═╝  ╚═══╝ ╚═════╝ ╚═╝╚═╝     ╚═╝
        ]],
      },
      sections = {
        -- {
        --   section = "terminal",
        --   cmd = "cat ~/Desktop/image.ascii",
        --   pane = 1,
        --   height = 10,
        --   padding = 3,
        -- },
        { section = "header" },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = { 2, 2 } },
        { section = "keys", gap = 1, padding = 1 },
        --{ section = "startup" },
      },
    },
  },
}
