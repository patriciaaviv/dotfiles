return {
	"williamboman/mason.nvim",
	dependencies = { "williamboman/mason-lspconfig.nvim" },
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "ts_ls", "rust_analyzer", "lua_ls", "pyright", "gopls", "clangd" },
			-- lspconfig.lua sets these servers up explicitly with custom
			-- on_attach/capabilities, so don't let mason auto-enable them too.
			automatic_enable = false,
		})
	end,
}
