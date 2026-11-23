return {
  "vifm/vifm.vim",
  lazy = false,
  init = function()
    vim.g.vifm_replace_netrw = 1
  end,
  keys = {
    { "<leader>e", "<cmd>Vifm<CR>", desc = "Open Vifm" },
  },
}
