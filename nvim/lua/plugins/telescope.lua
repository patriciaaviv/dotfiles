return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
	opts = {
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
					["<C-h>"] = "which_key",
				},
			},
		},
	},
	config = function(_, opts)
		require("telescope").setup(opts)
		require("telescope").load_extension("fzf")
		local tsb = require("telescope.builtin")
		local wk = require("which-key")
		wk.add({
			{ "<leader>f", group = "Find" },
			{ "<leader>ff", tsb.find_files, desc = "Local files" },
			{ "<leader>fg", tsb.git_files, desc = "Git files" },
			{ "<leader>fr", tsb.oldfiles, desc = "Old files" },
			{ "<leader>fb", tsb.buffers, desc = "Buffers" },
			{ "<leader>fc", tsb.grep_string, desc = "String under cursor" },
			{ "<leader>fs", tsb.live_grep, desc = "String in current working directory" },
			{ "<leader>ft", tsb.treesitter, desc = "Treesitter symbols" },
		})
	end,
}
