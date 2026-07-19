return {
  "echasnovski/mini.nvim",
  version = false,  -- Optional: always use the latest version
  config = function()
    -- statusline/tabline are handled by lualine.nvim instead
    require('mini.comment').setup()
    require('mini.surround').setup()
  end,
}
