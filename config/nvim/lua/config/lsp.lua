require("nvim-lsp-installer").setup({
    ensure_installed = { "grammarly" }, -- ensure these servers are always installed
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

local lspconfig = require'lspconfig'
lspconfig.clangd.setup {}
lspconfig.svls.setup{}
lspconfig.grammarly.setup{}

require('texmagic').setup{
	filetypes = {"tex", "markdown"}
}

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

