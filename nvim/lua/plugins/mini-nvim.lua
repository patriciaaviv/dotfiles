return {
  "echasnovski/mini.nvim",
  version = false,  -- Optional: always use the latest version
  config = function()
    -- Example: Setup mini.statusline
    require('mini.statusline').setup()

    -- Example: Setup mini.tabline
    require('mini.tabline').setup()

    -- Add other modules as needed...
  end,
}
