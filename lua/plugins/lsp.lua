return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    -- 1. Get the advanced capabilities from blink.cmp
    local blink_capabilities = require("blink.cmp").get_lsp_capabilities()

    -- 2. Ensure the servers table and the wildcard (*) entry exist
    opts.servers = opts.servers or {}
    opts.servers["*"] = opts.servers["*"] or {}

    -- 3. Safely merge blink capabilities into the global wildcard
    opts.servers["*"].capabilities = vim.tbl_deep_extend(
      "force",
      opts.servers["*"].capabilities or {},
      blink_capabilities
    )
  end,
}