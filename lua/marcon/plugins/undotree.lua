return {
  "mbbill/undotree",

  config = function()
    local keymap = vim.keymap
    keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, {desc = "Open UndotreeToggle"})
  end,
}
