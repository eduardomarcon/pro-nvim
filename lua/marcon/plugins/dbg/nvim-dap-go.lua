return {
  "leoluz/nvim-dap-go",
  dependencies = { "mfussenegger/nvim-dap" },
  config = function(_, opts)
    require("dap-go").setup(opts)
  end,
  keys = {
    {
      "<leader>dgt",
      function()
        require("dap-go").debug_test()
      end,
    },
    {
      "<leader>dgl",
      function()
        require("dap-go").debug_last()
      end,
    },
  },
}
