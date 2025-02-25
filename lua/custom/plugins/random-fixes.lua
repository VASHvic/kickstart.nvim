-- Set key mappings
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Maybe add in autogroup cmp un the future only for js y ts
local esc = vim.api.nvim_replace_termcodes('<Esc>', true, true, true)
vim.fn.setreg('l', 'yiwoconsole.log("' .. esc .. 'pa : ", ' .. esc .. 'pa);' .. esc .. 'la,' .. esc .. 'p1')

-- Set options
vim.opt.shell = 'powershell.exe'
vim.opt.termguicolors = true

-- Return a table if needed for module purposes
return {}
