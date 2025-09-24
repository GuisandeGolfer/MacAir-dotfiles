return {
  "folke/snacks.nvim",

  opts = {
    dashboard = {
      sections = {
        {
          section = "terminal",
          cmd = "zsh ~/display_ascii.sh",
          height = 20,
          padding = { 1, 1 },
        },

        { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 1, padding = 1 },

        { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 1, padding = 1 },

        { pane = 2, section = "keys", gap = 1, padding = 1 },

        --{ section = "startup" },
      },
    },
  },
}
