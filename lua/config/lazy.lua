local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if it exists, if not, clone it from stable
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
      "git", "clone",
      "--filter=blob:none",
      "--branch=stable",
      "https://github.com/folke/lazy.nvim.git",
      lazypath
  })
end
-- And finally, modify run time path to match
vim.opt.rtp:prepend(lazypath)                         
-- Setup
require("lazy").setup({
    spec = {
      { import = "plugins" }
    },
    checker = { enabled = true }
  })
