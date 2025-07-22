return {
  "folke/tokyonight.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    require("tokyonight").setup({
      style = "storm",
      styles = {
        functions = { italic = false },
        comments = { italic = false },
        keywords = { italic = false, bold = true },
      },
    })
    vim.cmd("colorscheme tokyonight")
  end,
}
