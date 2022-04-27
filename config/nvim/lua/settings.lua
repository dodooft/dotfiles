local utils = require('utils')

local cmd = vim.cmd
local indent = 4
local column = 95

cmd 'syntax enable'
cmd 'filetype plugin indent on'
vim.g.mapleader = " "

utils.opt('w', 'number', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'tabstop', indent)
utils.opt('b', 'tw', column)
utils.opt('o', 'spell', true)
utils.opt('o', 'spelllang', 'en_us')
utils.opt('b', 'smartindent', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'clipboard', 'unnamed,unnamedplus')
utils.opt('o', 'listchars', 'tab:→ ,nbsp:·,trail:·')
utils.opt('o', 'mouse', 'a')
vim.api.nvim_command('set list')
vim.api.nvim_command('let g:python_recommended_style = 0')

-- cmd 'autocmd FileType c,cpp,verilog setlocal commentstring=\\/\\/\\ \\%s'

