return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- You can leave this empty or add specific visual settings here
    -- icons = { group = "+" },
  },
  config = function(_, opts)
    local wk = require("which-key")
    
    -- Initialize the plugin
    wk.setup(opts)

    -- Register your custom names
    wk.add({
      { "<leader>s", group = "Search / Scratch Buffer" }, 
      { "<leader>r", group = "Run" }
    })
  end,
}