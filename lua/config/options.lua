-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Basics
vim.opt.number = true
vim.opt.relativenumber = true -- This is better for Vim motions than standard numbers
vim.opt.scrolloff = 8 -- Keep 8 lines of context when scrolling
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- Use spaces instead of tabs

-- Windows Performance Tweak
-- (Helps if Neovim feels sluggish on Windows Terminal)
-- vim.opt.lazyredraw = true

-- editor.formatOnSave: true
-- LazyVim enables this by default. To ensure it's on:
vim.g.autoformat = true

-- files.autoSave: "afterDelay"
-- Saves the file when you stop typing or leave the window
vim.opt.autowrite = true 
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave", "CursorHold" }, {
  command = "silent! wa",
})

-- editor.cursorBlinking: "smooth"
-- NOTE: True smooth blinking requires a GUI client like 'Neovide'. 
-- In a terminal, this sets the shape but the terminal controls the blink.
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

-- git.ignoreMissingGitWarning: true
-- Neovim won't warn you anyway, but this ensures git integration doesn't nag
vim.opt.signcolumn = "yes" -- Always show the gutter

if vim.g.neovide then
  vim.g.neovide_opacity = 1.0
  vim.g.neovide_scroll_animation_length = 0 -- Turn off scroll lag
  vim.g.neovide_cursor_animation_length = 0.00 -- Turn off cursor lag
  vim.g.neovide_cursor_trail_size = 0 -- No fancy trails
  vim.g.neovide_refresh_rate = 60 -- Match your monitor (important on Windows!)
  vim.opt.guifont = "JetBrainsMono NFM:h15"
end