-- VIM CONFIGS
-- Disable compatibility with vi which can cause unexpected issues.
vim.opt.compatible = false
-- Line Numbers.
vim.opt.number = true
-- Relative Line Numbers.
vim.opt.relativenumber = true
-- Shift Width to 4 spaces.
vim.opt.shiftwidth = 4
-- Tab Width to 4 spaces.
vim.opt.tabstop = 4
-- Use space characters instead of tabs.
vim.opt.expandtab = true
-- Do not sav backup files.
vim.opt.backup = false
-- Do not let cursor scroll below or above N number of lines when scrolling.
vim.opt.scrolloff = 10
-- Do not wrap lines
vim.opt.wrap = false
-- Incrementally highlight matching characters while typing when searching.
vim.opt.incsearch = true
-- Ignore capital letters during search.
vim.opt.ignorecase = true
-- Allow searching specifically for capital letters (Overwrites previous ignorecase if searching for capital letters).
vim.opt.smartcase = true
-- Show partial command you type in the last line of the screen.
vim.opt.showcmd = true
-- Show the mode you are on the last line.
vim.opt.showmode = true
-- Show matching words during a search.
vim.opt.hlsearch = true
-- Set commands to save in history.
vim.opt.history = 1000
-- Enable auto completion menu after pressing TAB.
vim.opt.wildmenu = true
-- Make wildmenu behave similar to Bash completion.
vim.opt.wildmode = 'list:longest'
-- Wildmenu will ignore files with the below extensions.
vim.opt.wildignore = {'*.docx','*.jpg','*.png','*.gif','*.pdf','*.pyc','*.exe','*.flv','*.img','*.xlsx'}


-- Primeagen 0 to LSP
require("hobbymath")
