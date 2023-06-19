vim.keymap.set("n", ";", ":bn<CR>")
vim.keymap.set("n", "<Tab>", "<C-W>w")

vim.keymap.set("n", "d-", "d$")

vim.keymap.set("n", "<C-a>", ":NvimTreeToggle<CR>")

vim.keymap.set("t", "<C-y>", "<C-\\><C-n> :ToggleTerm<CR>")
vim.keymap.set("n", "<C-y>", ":ToggleTerm<CR>")

-- Zoom
vim.g.neovide_scale_factor = 1.0
local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set("n", "<C-=>", function()
  change_scale_factor(1.25)
end)
vim.keymap.set("n", "<C-->", function()
  change_scale_factor(1/1.25)
end)

