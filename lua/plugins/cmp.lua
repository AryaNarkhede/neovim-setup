return {
  "saghen/blink.cmp",
  -- Optional: provides built-in snippets
  dependencies = { "rafamadriz/friendly-snippets" },

  -- Use a release tag to download pre-built Rust binaries so you don't have to compile it
  version = "*",

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 1. Source configuration
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },

    -- 2. Autocomplete Settings
    completion = {
      -- This keeps the popup menu hidden by default
      menu = {
        auto_show = false,
      },
      
      -- This enables the Copilot-style inline ghost text
      ghost_text = {
        enabled = true,
      },
    },

    -- 3. Key Mappings
    keymap = {
      -- We start with a blank slate instead of a preset to give you full control
      preset = "none",
      
      -- Manually trigger the popup box when you actually want to see options
      ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
      
      -- Accept the ghost text or the currently selected menu item
      ["<CR>"] = { "accept", "fallback" },
      
      -- Navigate the menu (only applies when you manually open it)
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },

    -- 4. Signature Help
    -- This natively enables the parameter/documentation window you asked about earlier
    signature = { 
      enabled = true, 
    },
  },
}