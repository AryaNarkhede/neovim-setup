return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- "mocha" is the dark variant closest to standard dark themes
      custom_highlights = function(colors)
        return {
          WinSeparator = { fg = colors.mauve, bold = true },
          -- This mimics your "textMateRules" override for comments
          Comment = { fg = "#9ece6a", style = { "italic" } },
        }
      end,
      integrations = {
        cmp = true,
        gitsigns = true,
        treesitter = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}