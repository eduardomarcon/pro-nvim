return {
  "olexsmir/gopher.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  ft = "go",
  config = function()
    local gopher = require("gopher")

    gopher.setup({
      commands = {
        go = "go",
        gomodifytags = "gomodifytags",
        impl = "impl",
        iferr = "iferr",
      },
    })
  end,
  build = function()
    vim.cmd([[silent! GoInstallDeps]])
  end,
  keys = {
    { "<leader>gsj", "<cmd> GoTagAdd json <CR>", desc = "Add json struct tags" },
    { "<leader>geh", "<cmd> GoIfErr <CR>", desc = "Add error handling" },
  },
}
