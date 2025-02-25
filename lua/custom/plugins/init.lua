-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>gs', function()
        vim.cmd 'vert Git'
      end, { desc = 'Fugitive status' })
      vim.keymap.set('n', '<leader>gv', function()
        vim.cmd 'Gvdiffsplit'
      end, { desc = 'Fugitive diff' })

      -- estos dos no se usarlos
      vim.keymap.set('n', '<leader>gh', ':diffget //2<CR>')
      vim.keymap.set('n', '<leader>gl', ':diffget //3<CR>')
    end,
  },
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    config = function()
      local harpoon = require 'harpoon'

      harpoon:setup()

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():append()
      end)
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      vim.keymap.set('n', '<C-M-h>', function()
        harpoon:list():select(1)
      end)

      vim.keymap.set('n', '<C-M-j>', function()
        harpoon:list():select(2)
      end)

      vim.keymap.set('n', '<C-M-k>', function()
        harpoon:list():select(3)
      end)

      vim.keymap.set('n', '<C-M-l>', function()
        harpoon:list():select(4)
      end)
    end,
  },
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true, silent = true })
      vim.g.undotree_WindowLayout = 3
    end,
  },
}
