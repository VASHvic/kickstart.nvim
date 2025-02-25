-- Set key mappings
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Set options
vim.opt.shell = 'powershell.exe'
vim.opt.termguicolors = true

-- Return a table if needed for module purposes
return {}
