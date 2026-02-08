return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      -- 1. Disable Auto-Selection
      -- This ensures that when the menu pops up, nothing is highlighted.
      -- So pressing Enter defaults to "New Line".
      opts.completion = {
        list = {
          selection = { preselect = true, auto_insert = false },
        },
      }

      opts.keymap = {
        preset = "none",
        -- TAB: Accepts the item immediately
        ["<Tab>"] = { "select_and_accept", "snippet_forward", "fallback" },
        -- ENTER: Always New Line
        ["<CR>"] = { "fallback" },
        
        -- Use C-n / C-p or Arrows to cycle
        ["<C-n>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
      }
    end,
  },
}