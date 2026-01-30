return {
  -- DISABLE snacks.nvim

  -- DISABLE other visual bloat you mentioned earlier
  { "folke/noice.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { "folke/flash.nvim", enabled = false },
  { "folke/trouble.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },  
  { "nvim-lualine/lualine.nvim", enabled = false },      -- Stops fancy notifications
  { "folke/persistence.nvim", enabled = false },    -- Session restore (1.25ms)
  { "folke/todo-comments.nvim", enabled = false },  -- TODO highlighting (1.62ms)  
  -- Stops fancy notifications
}