return {
  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("competitest").setup({
        runner_ui = {
          interface = "split", -- Show test cases in a split, not popup
        },
        compile_command = {
          -- Customize this to match your flags
          cpp = { exec = "g++", args = { "-std=c++20", "-Wall", "$(FNAME)", "-o", "$(FNOEXT).exe" } },
        },
        run_command = {
          cpp = { exec = "./$(FNOEXT).exe" },
        },
      })
    end,
    -- Map a key to receive test cases
    keys = {
      { "<leader>rc", "<cmd>CompetiTest receive testcases<cr>", desc = "CompetiTest Receive" },
      { "<leader>rr", "<cmd>CompetiTest run<cr>", desc = "CompetiTest Run" },
    },
  },
}

