
return {
    'rmagatti/session-lens',
    dependencies = { 'nvim-telescope/telescope.nvim', 'rmagatti/auto-session' },
    config = function()
        require('session-lens').setup {
            path = '~/.local/share/nvim/sessions/',  -- You can change this to your desired path
            previewer = true,  -- Enable previewer
        }
    end,
}
