--######################################
--##          OPTIONS CONFIG          ##
--######################################

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader= " "
vim.g.maplocalleader = " "
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


vim.keymap.set('n', '<leader>.', ':bNext<CR>', opts)
vim.keymap.set('n', '<leader>,', ':bprevious<CR>', opts)
