-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map Q to close the current buffer
vim.keymap.set("n", "Q", ":bd<CR>", { desc = "Close Buffer / Tab" })

-- Map 'f' to start a search (replacing the default '/')
-- Map 's' to Search (same as your custom 'f' or native '/')

-- Map 's' to native 'f' (Find character forward)
vim.keymap.set({ "n", "x", "o" }, "s", "f", { desc = "Find char forward" })

-- Recommended: Map 'S' to native 'F' (Find character backward)
vim.keymap.set({ "n", "x", "o" }, "S", "F", { desc = "Find char backward" })

vim.keymap.set("n", "f", "/", { desc = "Search forward" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")

-- Insert a new line below and return to Normal mode
vim.keymap.set("n", "<CR>", "o<Esc>", { desc = "Insert new line below" })

-- Insert a new line above and return to Normal mode
vim.keymap.set("n", "<S-CR>", "O<Esc>", { desc = "Insert new line above" })

local map = vim.keymap.set

-- Function to toggle the terminal (using Snacks.nvim, the standard in LazyVim)
local function toggle_term()
  Snacks.terminal(nil, { win = { position = "bottom", height = 15 } }) 
end


-- Map Ctrl+t in Normal ("n") and Terminal ("t") modes
map({ "n", "t" }, "<C-t>", toggle_term, { desc = "Toggle Terminal" })