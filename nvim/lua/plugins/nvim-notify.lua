return {
    "rcarriga/nvim-notify",
    config = function()
        -- Set up nvim-notify
        require("notify").setup({
            -- Configuration options
            stages = "fade",
            timeout = 3000, -- Notification duration in milliseconds
            background_colour = "#000000", -- Background color
            -- Other options can be set here
        })

        -- Map notify to a command for easy usage
        vim.notify = require("notify")
        
        -- Optionally set key mappings for testing notifications
        vim.api.nvim_set_keymap('n', '<leader>n', ':lua vim.notify("This is a test notification!")<CR>', { noremap = true, silent = true })
    end,
}
