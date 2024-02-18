vim.g.mapleader = " "

-- move text in visual mode
vim.keymap.set("v", "J", ":m '<+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- center when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Nvim Tree keymaps
vim.keymap.set("n", "<C-a>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<Tab>", ":NvimTreeFocus<CR>")

-- Top bar keymaps
vim.keymap.set("n", "<leader>q", ":BufferClose<CR>")
vim.keymap.set("n", "<leader>k", ":BufferNext<CR>")
vim.keymap.set("n", "<leader>j", ":BufferPrevious<CR>")
vim.keymap.set("n", "<leader>l", ":BufferMoveNext<CR>")
vim.keymap.set("n", "<leader>h", ":BufferMovePrevious<CR>")

-- renamer

vim.api.nvim_set_keymap('i', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })

-- Zoom
vim.g.neovide_scale_factor = 1.0
local change_scale_factor = function(delta)
	vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set("n", "<C-+>", function()
	change_scale_factor(1.25)
end)
vim.keymap.set("n", "<C-->", function()
	change_scale_factor(1 / 1.25)
end)

-- markdown previewer

vim.keymap.set("n", "<leader>mpe", ":MarkdownPreview<CR>")
vim.keymap.set("n", "<leader>mpd", ":MarkdownPreviewStop<CR>")
