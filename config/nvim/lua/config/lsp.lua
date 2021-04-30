require'lspconfig'.clangd.setup {}
require'lspconfig'.svls.setup{}

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "bash", "cpp", "css", "html", "python", "regex", "lua"}, 
  highlight = {
    enable = true 
  },
}

