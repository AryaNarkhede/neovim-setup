return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      clangd = {
        mason = false,
        cmd = {
          "/usr/bin/clangd",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--fallback-style=Linux",
          "--query-driver=C:/msys64/ucrt64/bin/g++.exe",
        },
      },
    },
  },
}
