local ts_config = require("nvim-treesitter.configs")

ts_config.setup {
	ensure_installed = {
		"javascript",
		"html",
		"css",
		"bash",
		"cpp",
		"rust",
		"lua",
		"verilog"
	},
	highlight = {
		enable = true,
		use_languagetree = true
	}
}
