return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	config = function()
		local configs = require("nvim-treesitter.configs")
		require("nvim-treesitter.install").compilers = { "gcc", "zig" },

		configs.setup({
			ensure_installed = {
				"c", "cpp",
				"c_sharp", "java",
				"json", "csv",
				"lua", "python",
				"make", "cmake",
				"glsl", "hlsl",
				"go", "rust",
				"html", "css",
				"javascript", "typescript",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
