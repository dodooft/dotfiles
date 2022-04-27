local lspconfig = require'lspconfig'
lspconfig.clangd.setup {}
lspconfig.svls.setup{}

require('texmagic').setup{}

lspconfig.texlab.setup{
	cmd = {"texlab"},
	filetypes = {"tex", "bib"},
	settings = {
		texlab = {
			rootDirectory = nil,
			build = {
			  args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
			  executable = "latexmk",
			  forwardSearchAfter = false,
			  onSave = true
			},
			forwardSearch = {
				executable = "evince",
				args = {"%p"}
			}
		}
	}
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "bash", "cpp", "css", "html", "python", "regex", "lua"}, 
  highlight = {
    enable = true 
  },
}

