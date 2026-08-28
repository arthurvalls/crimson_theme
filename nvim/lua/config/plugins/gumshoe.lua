return {
  "arthurvalls/gumshoe.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("gumshoe").setup({})
    vim.cmd.colorscheme("gumshoe")
  end,
}
