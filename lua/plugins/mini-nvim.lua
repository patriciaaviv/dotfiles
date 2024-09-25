return {
  "echasnovski/mini.nvim",
  version = false,  -- Optional: always use the latest version
  config = function()
    require('mini.statusline').setup()
    require('mini.tabline').setup()

  end,
}
