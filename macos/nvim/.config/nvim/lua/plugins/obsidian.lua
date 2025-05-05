return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/Desktop/obsidian/",
      },
    },

    log_level = vim.log.levels.INFO,

    mappings = {
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      ["<leader>ch"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
    },

    daily_notes = {
      folder = "2_Areas/DailyNotes",
      date_format = "%Y-%m-%d",
      alias_format = "%B %-d, %Y",
      default_tags = { "daily-notes" },
    },

    picker = {
      name = "telescope.nvim",
      note_picker_config = {
        prompt_title = "Search Notes",
        find_command = { "fd", ".", "-type", "f", "-name", "*.md" },
      },
    },

    new_notes_location = "current_dir",

    completion = {
      nvim_cmp = true, -- Enable nvim-cmp source
      min_chars = 2, -- Trigger completion after 2 characters
    },

    -- Move these here, NOT inside mappings!!
    wiki_link_func = function(opts)
      return require("obsidian.util").wiki_link_id_prefix(opts)
    end,

    markdown_link_func = function(opts)
      return require("obsidian.util").markdown_link(opts)
    end,

    preferred_link_style = "markdown",

    disable_frontmatter = false,

    templates = {
      folder = "3_Resources/Templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      substitutions = {
        --template for substitutions
        supfoo = function()
          return "sup foo"
        end,
      },
    },

    follow_url_func = function(url)
      vim.fn.jobstart({ "open", url }) -- Mac OS
    end,

    sort_by = "modified",
    sort_reversed = true,
    search_max_lines = 1000,
    open_notes_in = "vsplit",

    ui = {
      enable = true,
      update_debounce = 200,
      max_file_length = 5000,
      checkboxes = {
        [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
        ["x"] = { char = "", hl_group = "ObsidianDone" },
        [">"] = { char = "", hl_group = "ObsidianRightArrow" },
        ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
        ["!"] = { char = "", hl_group = "ObsidianImportant" },
      },
    },
  },
}
