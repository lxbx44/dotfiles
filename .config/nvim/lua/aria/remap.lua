vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('v', "J", ":m '<+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set("n", "<C-a>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<Tab>", ":NvimTreeFocus<CR>")

-- barbar

vim.keymap.set("n", "<leader>q", ":BufferClose<CR>")
vim.keymap.set("n", "<leader>k", ":BufferNext<CR>")
vim.keymap.set("n", "<leader>j", ":BufferPrevious<CR>")
vim.keymap.set("n", "<leader>l", ":BufferMoveNext<CR>")
vim.keymap.set("n", "<leader>h", ":BufferMovePrevious<CR>")

-- Zoom
vim.g.neovide_scale_factor = 1.0
local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set("n", "<C-*>", function()
  change_scale_factor(1.25)
end)
vim.keymap.set("n", "<C-_>", function()
  change_scale_factor(1/1.25)
end)

