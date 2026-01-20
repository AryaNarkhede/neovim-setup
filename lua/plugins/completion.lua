return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap = {
        -- set to 'default' to avoid the 'super-tab' cycling behavior
        preset = "default", 

        -- TAB: Try to accept. If menu is closed, do "fallback" (Indentation)
        ["<Tab>"] = { "select_and_accept", "fallback" },

        -- SHIFT+TAB: Go up. If menu closed, do "fallback" (Un-indent)
        ["<S-Tab>"] = { "select_prev", "fallback" },

        -- ENTER: Do "fallback" (New Line). Do NOT accept completion.
        ["<CR>"] = { "fallback" },

        -- ARROWS: Navigate the menu
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
        ["<C-n>"] = { "select_next", "fallback" },
      }
    end,
  },
}