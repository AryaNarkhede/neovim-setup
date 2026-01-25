return {

  -- 1. Main LSP Configuration

  {

    "neovim/nvim-lspconfig",

    opts = {
      inlay_hints = { enabled = false },

      setup = {

        clangd = function(_, opts)
          opts.cmd = {

            "clangd",

            "--background-index",

            "--clang-tidy",

            "--header-insertion=iwyu",

            "--completion-style=detailed",

            "--fallback-style=llvm",

            "--query-driver=C:/mingw64/bin/g++*",

            -- DELETED: "--target=..." (This caused the crash!)
          }

          return false
        end,
      },
    },
  },

}
