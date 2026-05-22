return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "scheme" })
      -- Force Treesitter to strictly use the compiler you installed
      -- Change "zig" to "gcc" if you used Scoop instead of Winget
      require("nvim-treesitter.install").compilers = { "zig" }
    end,
  },
}