vim.g.mapleader = " "

local opt = vim.opt
opt.relativenumber = true
opt.number = true
opt.ignorecase = true

vim.o.guifont = "Fira Code"

require("ratatouille.lazy")
