return {
  "folke/snacks.nvim",

  lazy = false,
  ---@type snacks.Config
  opts = {
    scratch = {
      -- Change this path to your desired directory
      -- Example: "C:/Arya/Brain/scratch" or "~/notes/scratch"
      root = vim.fn.expand("C:/Arya/Brain/scratch"), 
      
      autowrite = true, -- Auto save on close
      filekey = {
        cwd = true,      -- Use current directory to distinguish files?
        branch = false,  -- Use git branch to distinguish files?
        count = true,    -- Allow multiple scratch files?
      },
    },
    -- ... other snacks modules
    picker = {
        sources = {
          explorer = {
            win = {
              list = {
                keys = {
                  -- Map 's' to horizontal split
                  ["s"] = "edit_split",
                  -- Map 'v' to vertical split
                  ["v"] = "edit_vsplit",
                },
              },
            },
            -- This configures the file explorer specifically
            layout = {
              preset = "sidebar", -- Ensures it stays as a sidebar
              layout = {
                position = "left",
                width = 27, -- CHANGE THIS: Default is usually 30 or 40
              },
            },
          },
        },
    },
    terminal = {
         win = {
           position = "float",
         },
    },


  },
  keys = {
    {
      "<leader>t",
      function()
        Snacks.scratch.open({
          icon = " ",             -- This icon stays (shows on the window title)
          file = "C:/Arya/Brain/00-todo.md", 
          name = "Todo",
          ft = "markdown",
          width = 0.6,
          height = 0.6,
        })
      end,
      desc = "Todo List",           -- Description works fine
      -- REMOVED: icon = " "       -- This was causing the crash
    },
  },

}