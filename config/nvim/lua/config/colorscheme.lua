local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)

cmd 'let ayucolor="mirage"'                                                                                        
cmd 'colorscheme ayu'


