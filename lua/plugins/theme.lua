return {
  "folke/tokyonight.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    style = "storm",
    styles = {
      functions = { italic = false },
      comments = { italic = false },
      keywords = { italic = false }
    }
  },
  config = function()
    vim.cmd("colorscheme tokyonight")
  end,
}
