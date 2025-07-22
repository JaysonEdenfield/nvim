return {
  "folke/tokyonight.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    style = "storm",
    styles = {
      functions = {},
      comments = {},
      keywords = {}
    }
  },
  config = function()
    vim.cmd("colorscheme tokyonight")
  end,
}
