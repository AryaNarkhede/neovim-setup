return {
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "BufReadPost", -- Load it when you open a file
    config = function()
      -- Optional: You can configure specific brackets here if needed
      -- usually the default config works great.
    end,
  },
}