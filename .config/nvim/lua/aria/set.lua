vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append('@-@')

vim.opt.updatetime = 50

vim.o.clipboard = 'unnamedplus'

vim.o.shell = 'zsh'

-- set ejs highlighting

vim.api.nvim_exec([[
  augroup EJSFileType
    autocmd!
    autocmd BufNewFile,BufRead *.ejs set filetype=html
  augroup END
]], false)
