return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "scheme" })
      -- Use standard Linux compilers
      require("nvim-treesitter.install").compilers = { "gcc", "clang" }
    end,
  },
}