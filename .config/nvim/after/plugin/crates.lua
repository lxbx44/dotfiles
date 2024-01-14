local crates = require('crates')
local opts = { silent = true }

vim.keymap.set('n', '<leader>ct', crates.toggle, opts)
vim.keymap.set('n', '<leader>cua', crates.update_all_crates, opts)
vim.keymap.set('n', '<leader>csd', crates.open_documentation, opts)
