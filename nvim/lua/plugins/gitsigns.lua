return {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                
                signs = {
                    add = { text = '+' },
                    change = { text = '~' },
                    delete = { text = '_' },
                    topdelete = { text = '‾' },
                    changedelete = { text = '~' },
                },
                keymaps = {
                    noremap = true,
                    ["n ]g"] = { expr = true, "&diff ? ']g' : '<Plug>(gitsigns-next-hunk)'"},
                    ["n [g"] = { expr = true, "&diff ? '[g' : '<Plug>(gitsigns-prev-hunk)'"},
                    ["n <leader>gs"] = "<cmd>Gitsigns stage_hunk<CR>",
                    ["n <leader>gr"] = "<cmd>Gitsigns reset_hunk<CR>",
                    ["n <leader>gS"] = "<cmd>Gitsigns stage_buffer<CR>",
                    ["n <leader>gu"] = "<cmd>Gitsigns undo_stage_hunk<CR>",
                    ["n <leader>gp"] = "<cmd>Gitsigns preview_hunk<CR>",
                    ["n <leader>gb"] = "<cmd>Gitsigns blame_line<CR>",
                    ["n <leader>gR"] = "<cmd>Gitsigns reset_buffer<CR>",
                    ["n <leader>gd"] = "<cmd>Gitsigns diffthis<CR>",
                    ["n <leader>gD"] = "<cmd>Gitsigns diffthis ~<CR>",
                },
                watch_gitdir = {
                    interval = 1000,
                    follow_files = true,
                },
                current_line_blame = true,
                current_line_blame_opts = {
                    delay = 1000,
                },
                current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",

                on_attach = function(bufnr)
                    local gitsigns = require('gitsigns')

                    local function map(mode, l, r, opts)
                      opts = opts or {}
                      opts.buffer = bufnr
                      vim.keymap.set(mode, l, r, opts)
                    end

                    -- Navigation
                    map('n', ']c', function()
                      if vim.wo.diff then
                        vim.cmd.normal({']c', bang = true})
                      else
                        gitsigns.nav_hunk('next')
                      end
                    end)

                    map('n', '[c', function()
                      if vim.wo.diff then
                        vim.cmd.normal({'[c', bang = true})
                      else
                        gitsigns.nav_hunk('prev')
                      end
                    end)

                    -- Actions
                    map('n', '<leader>hs', gitsigns.stage_hunk)
                    map('n', '<leader>hr', gitsigns.reset_hunk)
                    map('v', '<leader>hs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
                    map('v', '<leader>hr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
                    map('n', '<leader>hS', gitsigns.stage_buffer)
                    map('n', '<leader>hu', gitsigns.undo_stage_hunk)
                    map('n', '<leader>hR', gitsigns.reset_buffer)
                    map('n', '<leader>hp', gitsigns.preview_hunk)
                    map('n', '<leader>hb', function() gitsigns.blame_line{full=true} end)
                    map('n', '<leader>tb', gitsigns.toggle_current_line_blame)
                    map('n', '<leader>hd', gitsigns.diffthis)
                    map('n', '<leader>hD', function() gitsigns.diffthis('~') end)
                    map('n', '<leader>td', gitsigns.toggle_deleted)

                    -- Text object
                    map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
                end,
            })
        end,
}

