return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local on_attach = function(_, bufnr)
			local wk = require("which-key")
			wk.add({
				{ "K", vim.lsp.buf.hover, desc = "Hover documentation", buffer = bufnr },
				{ "gd", vim.lsp.buf.definition, desc = "Definition", buffer = bufnr },
				{ "gD", vim.lsp.buf.declaration, desc = "Declaration", buffer = bufnr },
				{ "gi", vim.lsp.buf.implementation, desc = "Implementation", buffer = bufnr },
				{ "go", vim.lsp.buf.type_definition, desc = "Type definition", buffer = bufnr },
				{ "gr", vim.lsp.buf.references, desc = "References", buffer = bufnr },
				{ "[d", vim.diagnostic.goto_next, desc = "Jump to next diagnostic", buffer = bufnr },
				{ "]d", vim.diagnostic.goto_prev, desc = "Jump to previous diagnostic", buffer = bufnr },
				{ "<leader>c", vim.lsp.buf.code_action, desc = "Show code actions", buffer = bufnr },
				{ "<leader>rn", vim.lsp.buf.rename, desc = "Rename symbol", buffer = bufnr },
				{ "<leader>vws", vim.lsp.buf.workspace_symbol, desc = "Find symbol in workspace", buffer = bufnr },
				{ "<leader>e", vim.diagnostic.open_float, desc = "Show diagnostics for line", buffer = bufnr },
				-- { "<leader>E", require("telescope.builtin").diagnostics, desc = "Show diagnostics for buffer", buffer = bufnr },
				{ "<leader>F", vim.lsp.buf.format, desc = "Format buffer", buffer = bufnr },
			})
		end
		require("lspconfig").tsserver.setup({ capabilities = capabilities })
		require("lspconfig").rust_analyzer.setup({ capabilities = capabilities })
	end,
}
