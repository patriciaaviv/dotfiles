return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local bufnr = args.buf
				local wk = require("which-key")
				wk.add({
					{ "K", vim.lsp.buf.hover, desc = "Hover documentation", buffer = bufnr },
					{ "gd", vim.lsp.buf.definition, desc = "Definition", buffer = bufnr },
					{ "gD", vim.lsp.buf.declaration, desc = "Declaration", buffer = bufnr },
					{ "gi", vim.lsp.buf.implementation, desc = "Implementation", buffer = bufnr },
					{ "go", vim.lsp.buf.type_definition, desc = "Type definition", buffer = bufnr },
					{ "gr", vim.lsp.buf.references, desc = "References", buffer = bufnr },
					{
						"[d",
						function()
							vim.diagnostic.jump({ count = -1, float = true })
						end,
						desc = "Jump to previous diagnostic",
						buffer = bufnr,
					},
					{
						"]d",
						function()
							vim.diagnostic.jump({ count = 1, float = true })
						end,
						desc = "Jump to next diagnostic",
						buffer = bufnr,
					},
					{ "<leader>c", vim.lsp.buf.code_action, desc = "Show code actions", buffer = bufnr },
					{ "<leader>rn", vim.lsp.buf.rename, desc = "Rename symbol", buffer = bufnr },
					{ "<leader>vws", vim.lsp.buf.workspace_symbol, desc = "Find symbol in workspace", buffer = bufnr },
					{ "<leader>e", vim.diagnostic.open_float, desc = "Show diagnostics for line", buffer = bufnr },
					-- { "<leader>E", require("telescope.builtin").diagnostics, desc = "Show diagnostics for buffer", buffer = bufnr },
				})
			end,
		})

		-- Applied to every server enabled below (native vim.lsp.config/vim.lsp.enable
		-- API; the old require("lspconfig").xxx.setup() form is deprecated and will
		-- be removed in nvim-lspconfig v3.0.0)
		vim.lsp.config("*", { capabilities = capabilities })

		-- Recognize the `vim` global and this config's own runtime files so
		-- lua_ls doesn't flag them as undefined/missing.
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
					workspace = {
						library = vim.list_extend({ vim.env.VIMRUNTIME }, vim.api.nvim_get_runtime_file("", true)),
						checkThirdParty = false,
					},
				},
			},
		})

		vim.lsp.enable({ "ts_ls", "rust_analyzer", "lua_ls", "pyright", "gopls", "clangd" })
	end,
}
