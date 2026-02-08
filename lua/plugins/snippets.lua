return {
  {
    "L3MON4D3/LuaSnip",
    -- Load immediately to ensure they exist
    lazy = false,   
    keys = function() return {} end,
    config = function()
      local ls = require("luasnip")

      -- 1. Load your JSON snippets from the "snippets" folder in root
      require("luasnip.loaders.from_vscode").load({ 
        paths = { vim.fn.stdpath("config") .. "/snippets" } 
      })
      
      -- 2. Add a DEBUG snippet in Lua (Sanity Check)
      -- Type "testlua" in a C++ file to see if the ENGINE works.
      ls.add_snippets("cpp", {
        ls.snippet("testlua", { ls.text_node("Success! LuaSnip is working.") })
      })
    end,
  },
}