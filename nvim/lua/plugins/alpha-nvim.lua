return {
    'goolord/alpha-nvim',
    config = function()
        local alpha = require'alpha'
        local dashboard = require'alpha.themes.dashboard'
        
        dashboard.section.header.val = {

        [[                                                                       ]],
	    [[  ██████   █████                   █████   █████  ███                  ]],
	    [[ ░░██████ ░░███                   ░░███   ░░███  ░░░                   ]],
	    [[  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   ]],
	    [[  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  ]],
	    [[  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  ]],
	    [[  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  ]],
	    [[  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ ]],
	    [[ ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  ]],
	    [[                                                                       ]],
        [[                     \`-._           __             ]],
        [[                      \\  \-..____,.'  `.           ]],
        [[                       :  )       :      :\         ]],
        [[                        ;'        '   ;  | :        ]],
        [[                        )..      .. .:.`.; :        ]],
        [[                       /::...  .:::...   ` ;        ]],
        [[                       `:o>   /\o_>        : `.     ]],
        [[                      `-`.__ ;   __..--- /:.   \    ]],
        [[                      === \_/   ;=====_.':.     ;   ]],
        [[                       ,/'`--'...`--....        ;   ]],
        [[                            ;                    ;  ]],
        [[                        . '                       ; ]],
        [[                      .'     ..     ,      .       ;]],
        [[                     :       ::..  /      ;::.     |]],
        [[                    /      `.;::.  |       ;:..    ;]],
        [[                   :         |:.   :       ;:.    ; ]],
        [[                   :         ::     ;:..   |.    ;  ]],
        [[                    :       :;      :::....|     |  ]],
        [[                    /\     ,/ \      ;:::::;     ;  ]],
        [[                  .:. \:..|    :     ; '.--|     ;  ]],
        [[                 ::.  :''  `-.,,;     ;'   ;     ;  ]],
        [[              .-'. _.'\      / `;      \,__:      \ ]],
        [[              `---'    `----'   ;      /    \,.,,,/ ]],
        [[                                 `----`             ]],
        [[                                                    ]]
        }


    dashboard.section.buttons.val = {
        dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "🔍 Find file", ":Telescope find_files <CR>"),
        dashboard.button("r", "  Recent", ":Telescope oldfiles <CR>"),
        dashboard.button("s", "  Settings", ":e $MYVIMRC | :cd %:p:h <CR>"),
        dashboard.button("q", "🚪 Quit", ":qa<CR>"),
      }

      -- Send config to alpha
        alpha.setup(dashboard.opts)
    end
  }
