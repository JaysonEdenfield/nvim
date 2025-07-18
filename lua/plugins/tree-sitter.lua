return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
        -- TODO
        ensure_installed = { "c", "lua", "cpp" }, -- Add over time
        highlight = {
          enable = true,
          disable = function(lang, buf)
            local max_file_size = 128 * 1024 -- 128kb
            local ok, stats = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_file_size then
              return true
            end
          end,
        additional_vim_regex_highlighting = false,
        }
    }),
  end
}
