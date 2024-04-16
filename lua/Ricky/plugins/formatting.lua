return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	opts = {

		formatters_by_ft = {
			javascript = { "eslint_d", "prettier" },
			typescript = { "eslint_d", "prettier" },
			javascriptreact = { "eslint_d", "prettier" },
			typescriptreact = { "eslint_d", "prettier" },
			css = { "prettier" },
			html = { "prettier" },
			json = { "prettier" },
			yaml = { "prettier" },
			markdown = { "prettier" },
			lua = { "stylua" },
			go = { "gofumpt", "gopls", "goimports", "goimports-reviser", "golines" },
			terraform = { "terraform_fmt" },
		},
		format_on_save = {
			lsp_fallback = true,
			async = true,
			timeout_ms = 5000,
		},
	},
}
