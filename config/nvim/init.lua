local fn = vim.fn
local execute = vim.api.nvim_command

-- Sensible defaults
require('settings')

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' ..
                install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- Install plugins
require('plugins')

-- Key mappings
require('keymap')

-- LSP
require('lang')

-- Another option is to groups configuration in one folder
require('config.colorscheme')
require('config.devicon')
require('config.telescope')
require('config.bufferline')
require('config.lsp')
-- require('config.compe')
require('config.kommentary')
require('config.gitsigns')
require('config.treesitter')

