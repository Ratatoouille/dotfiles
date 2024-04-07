local keymap = vim.keymap
vim.g.mapleader = " "

local opt = vim.opt
opt.relativenumber = true
opt.number = true
opt.ignorecase = true

require("ratatouille.lazy")
