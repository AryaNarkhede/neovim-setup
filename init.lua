if vim.loader then
  vim.loader.enable()
end
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })
vim.keymap.set('i', 'jj', '<Esc>', { noremap = true })
