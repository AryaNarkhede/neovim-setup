-- lua/after/ftplugin/c.lua

-- Force 8-space width for tabs (Linux Kernel Style)
vim.opt_local.tabstop = 8
vim.opt_local.shiftwidth = 8
vim.opt_local.softtabstop = 8
vim.opt_local.expandtab = false -- Essential: Use real tabs, not spaces