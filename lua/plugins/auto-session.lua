return {
    -- Auto Session
    'rmagatti/auto-session',
    config = function()
        vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
        
        require('auto-session').setup {
            log_level = 'info',
            auto_save_enabled = true,
            auto_restore_enabled = true,
            -- You can customize the session path if you want
            session_directory = '~/.local/share/nvim/sessions/',
        }
    end,
}
