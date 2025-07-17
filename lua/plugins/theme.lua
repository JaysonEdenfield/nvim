return {
  "folke/tokyonight.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    style = "storm",
  },
  config = function()
    vim.cmd[[colorscheme tokyonight]],
  end,
}
