return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "*",

  -- Global Normal-mode toggles (Which-Key integrated)
  keys = {
    {
      "<leader>uu",
      function()
        local config = require("blink.cmp.config")
        config.completion.menu.auto_show = not config.completion.menu.auto_show
        local state = config.completion.menu.auto_show and "ON" or "OFF"
        vim.notify("Autocomplete Menu: " .. state, vim.log.levels.INFO, { title = "blink.cmp" })
      end,
      desc = "Toggle Autocomplete Menu",
      -- icon = "󰦨 ", 
      mode = "n",
    },
  },

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },

    completion = {
      menu = {
        auto_show = false,
      },
      
      -- Keeps the documentation window completely hidden until you manually ask for it
      documentation = {
        auto_show = false,
        auto_show_delay_ms = 500,
      },

      ghost_text = {
        enabled = true,
      },
    },

    -- Key Mappings
    keymap = {
      preset = "none",

      -- Open the autocomplete menu (using <C-x> as the reliable alternative to <C-Space>)
      ["<C-x>"] = { "show", "hide", "fallback" },
      ["<C-Space>"] = { "show", "hide", "fallback" },

      -- Accept the ghost text or currently selected item
      ["<CR>"] = { "accept", "fallback" },

      -- Navigate the menu using Ctrl+j and Ctrl+k
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },

      -- === The Insert-Mode Toggles ===
      
      -- Press Ctrl+d to toggle the Documentation window for the selected item
      ["<C-d>"] = { "show_documentation", "hide_documentation", "fallback" },
      
      -- Press Ctrl+l to toggle the function Signature help (parameters)
      ["<C-l>"] = { "show_signature", "hide_signature", "fallback" },
      
      -- Bonus: Scroll inside the documentation window if it's really long
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },
      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
    },

    signature = {
      enabled = true,
      trigger = {
        show_on_trigger_character = false,
        show_on_insert_on_trigger_character = false,
      },
    },
  },
}