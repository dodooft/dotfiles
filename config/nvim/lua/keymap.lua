local utils = require('utils')

utils.map('n', '<C-l>', '<cmd>noh<cr>') -- Clear highlights
utils.map('n', '<A-[>', '<cmd>BufferLineCyclePrev<cr>')
utils.map('n', '<A-]>', '<cmd>BufferLineCycleNext<cr>')
-- Move lines
utils.map('i', '<A-Up>', '<C-o>:m-2<cr>')
utils.map('i', '<A-Down>', '<C-o>:m+<cr>')
-- Telescope
utils.map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
utils.map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
utils.map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
utils.map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
-- LS
utils.map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
utils.map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
utils.map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
utils.map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
-- Buffer
utils.map('n', '<A-Left>', '<C-W>h')
utils.map('n', '<A-Right>', '<C-W>l')

