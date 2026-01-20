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

  -- 2. Debugger Setup (DAP)

  {

    "mfussenegger/nvim-dap",
    event = "VeryLazy",

    config = function()
      local dap = require("dap")

      dap.adapters.codelldb = {

        type = "server",

        port = "${port}",

        executable = {

          command = vim.fn.stdpath("data") .. "\\mason\\bin\\codelldb.cmd",

          args = { "--port", "${port}" },
        },
      }

      dap.configurations.cpp = {

        {

          name = "Launch file",

          type = "codelldb",

          request = "launch",

          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.expand("%:r") .. ".exe", "file")
          end,

          cwd = "${workspaceFolder}",

          stopOnEntry = false,
        },
      }
    end,
  },
}
