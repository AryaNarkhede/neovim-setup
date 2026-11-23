return {
  "vifm/vifm.vim",
  lazy = false,
  init = function()
    vim.g.vifm_replace_netrw = 1
    vim.g.vifm_replace_netrw_cmd = "VifmDir"

    vim.api.nvim_create_user_command("VifmDir", function(opts)
      local dir = vim.fn.fnameescape(vim.fn.fnamemodify(opts.args, ":p"))
      vim.cmd("Vifm " .. dir .. " " .. dir)
    end, { nargs = 1, complete = "dir" })
  end,
  keys = {
    { "<leader>e", "<cmd>Vifm<CR>", desc = "Open Vifm" },
  },
}
