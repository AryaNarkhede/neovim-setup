return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      c = { "clang-format" },
      cpp = { "clang-format" },
      objc = { "clang-format" },
      objcpp = { "clang-format" },
    },
    formatters = {
      ["clang-format"] = {
        prepend_args = function(_, ctx)
          local style = vim.fs.find({ ".clang-format", "_clang-format" }, {
            path = vim.fs.dirname(ctx.filename),
            upward = true,
          })[1]
          local home_style = vim.fn.expand("~/.clang-format")
          if not style and vim.fn.filereadable(home_style) == 1 then
            return { "--style=file:" .. home_style }
          end
          return {}
        end,
      },
    },
  },
}
