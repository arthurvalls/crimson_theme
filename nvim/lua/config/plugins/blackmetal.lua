-- Using lazy.nvim
return {
  "metalelf0/black-metal-theme-neovim",
  lazy = false,
  priority = 1000,
  config = function()
    require("black-metal").setup({
      -- optional configuration here, e.g.:
      trve = true, -- switch this to false if you want light variants
    })
    require("black-metal").load()
  end,
}
