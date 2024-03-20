require "nvchad.options"

local o = vim.o
local opt = vim.opt

--tab stops
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

--cursor line
o.cursorlineopt = "both"
