return {

  "hrsh7th/nvim-cmp",

  event = "InsertEnter",

  dependencies = {

    "hrsh7th/cmp-nvim-lsp",

    "hrsh7th/cmp-buffer", -- Required for 'buffer' source

    "hrsh7th/cmp-path", -- Required for 'path' source

  },

  config = function()

    local cmp = require("cmp")

    local compare = require("cmp.config.compare")



    cmp.setup({

      -- 1. Source Prioritization (Your snippet)

      -- This forces words found in the current file to appear above global LSP items

      sources = cmp.config.sources({

        { name = "buffer", priority = 1000 },

        { name = "nvim_lsp", priority = 500 },

        { name = "path" },

      }),



      -- 2. Sorting Logic (The "Smart" Locality)

      -- This ensures that even within the same source, items closer to the cursor win

      sorting = {

        priority_weight = 2,

        comparators = {

          compare.offset,

          compare.exact,

          compare.locality, -- Keep this high to prefer variables in current scope

          compare.recently_used,

          compare.score,

          compare.kind,

          compare.sort_text,

          compare.length,

          compare.order,

        },

      },



      -- Basic mapping setup (needed so you can actually select things)

      mapping = cmp.mapping.preset.insert({

        ["<C-b>"] = cmp.mapping.scroll_docs(-4),

        ["<C-f>"] = cmp.mapping.scroll_docs(4),

        ["<C-Space>"] = cmp.mapping.complete(),

        ["<CR>"] = cmp.mapping.confirm({ select = true }),

        ["<Tab>"] = cmp.mapping.select_next_item(),

        ["<S-Tab>"] = cmp.mapping.select_prev_item(),

      }),

    })

  end,

}

