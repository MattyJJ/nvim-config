return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"neovim/nvim-lspconfig",
	},

	config = function()
		local mason = require("mason");
		local mason_lspconfig = require("mason-lspconfig");
		local lsp_config = require("lspconfig")

		mason.setup {}

		mason_lspconfig.setup {}

	
	end
}
