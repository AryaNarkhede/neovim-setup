return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    priority = 1000,
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "oxocarbon",
        callback = function()
          local green = "#9ece6a"

          -- 1. Existing overrides
          vim.api.nvim_set_hl(0, "Comment", { fg = green, italic = true })
          vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#555555", bold = true })
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#bdc7c2", bg = "NONE" })

          -- 2. Treesitter Formatting (The modern standard for markup)
          --    Targeting 'markup' ensures we don't accidentally turn code keywords green
          vim.api.nvim_set_hl(0, "@markup.strong", { fg = green, bold = true })
          vim.api.nvim_set_hl(0, "@markup.italic", { fg = green, italic = true })
          
          -- 3. Legacy/Regex Markdown Formatting
          --    Necessary if you open a file where Treesitter isn't active
          vim.api.nvim_set_hl(0, "markdownBold", { fg = green, bold = true })
          vim.api.nvim_set_hl(0, "markdownItalic", { fg = green, italic = true })
          vim.api.nvim_set_hl(0, "markdownBoldItalic", { fg = green, bold = true, italic = true })
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oxocarbon",
    },
  },
}