vim.o.guifont = 'jetbrains mono nerd font'
vim.o.clipboard = vim.o.clipboard .. 'unnamedplus'

vim.o.scrolloff = 8
vim.opt.nu = true
vim.o.relativenumber = false

vim.o.nocompatible = true
vim.o.termguicolors = true

vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.shell = 'zsh'

vim.g['airline_powerline_fonts'] = 1
vim.g['airline#extensions#tabline#enabled'] = 1
vim.g['airline#extensions#tabline#fnamemode'] = ':t'

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.completeopt='menuone,noinsert,noselect'
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.completion_enable_auto_popup = 0

vim.cmd('filetype plugin on')
vim.cmd('syntax on')

require('aria.plugins')
require('aria.lsp')
require('aria.pluginconf')
require('aria.remap')
require("startup").setup({theme = "dashboard"})

vim.g.airline_theme = "catppuccin"
vim.cmd.colorscheme "catppuccin"

