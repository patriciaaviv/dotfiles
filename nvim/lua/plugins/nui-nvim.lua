return {
    "MunifTanjim/nui.nvim",
    config = function()
        local NuiInput = require("nui.input")
        local nui_popup = require("nui.popup")
        local event = require("nui.utils.autocmd").event

        -- Create a function to display an input dialog
        local function open_input_dialog()
            local input = NuiInput({
                position = {
                    relative = "editor",
                    row = 5,
                    col = 5,
                },
                size = {
                    width = 40,
                    height = 1,
                },
                border = {
                    style = "single",
                    text = {
                        top = "Input",
                        top_align = "center",
                    },
                },
                win_options = {
                    winblend = 10,
                    wrap = false,
                },
            }, function(value)
                -- This function will be called after user input
                print("User input: " .. value)
            end)

            input:mount()
        end

        -- Optionally, you can set up a command to open the input dialog
        vim.api.nvim_create_user_command("InputDialog", open_input_dialog, {})

        -- Example of setting a key mapping to open the dialog
        vim.api.nvim_set_keymap('n', '<leader>i', ':InputDialog<CR>', { noremap = true, silent = true })
    end,
}
