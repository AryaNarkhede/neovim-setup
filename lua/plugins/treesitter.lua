return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "scheme" })
      -- Use available C compilers (ensure gcc/clang/cl is on PATH)
      require("nvim-treesitter.install").compilers = { "gcc", "clang", "cl", "cc" }
    end,
  },
}