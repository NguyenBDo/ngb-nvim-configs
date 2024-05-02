vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.api.nvim_exec("language en_US", true)
vim.g.mapleader = " "

vim.o.number = true -- add line number
-- vim.o.relativenumber = true

vim.o.signcolumn = "yes" -- add a block left of the screen

vim.g.background = "transparent"
