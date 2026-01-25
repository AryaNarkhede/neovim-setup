return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- DISABLE EVERYTHING VISUAL
    dashboard = { enabled = false },
    indent = { enabled = false },
    input = { enabled = false },
    notifier = { enabled = false },
    scroll = { enabled = false },
    statuscolumn = { enabled = false },
    words = { enabled = false },
    styles = { enabled = false },
    
    -- THE ONES YOU MISSED (Add these lines)
    picker = { enabled = false },    -- This kills the search UI
    explorer = { enabled = false },  -- This kills the Snacks file tree
    scope = { enabled = false },     -- Kills scope borders
    zen = { enabled = false },       -- Kills zen mode
    toggle = { enabled = false },    -- Kills toggle mappings
    
    -- KEEP PERFORMANCE HELPERS
    bigfile = { enabled = true },
    quickfile = { enabled = true },
  },
}