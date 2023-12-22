-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
      'daltonmenezes/aura-theme',
      rtp = 'packages/neovim',
      config = function()
          vim.cmd("colorscheme aura-dark") -- Or any Aura theme available
          vim.api.nvim_set_hl(0, 'LineNrAbove', {fg='#edecee'})
          vim.api.nvim_set_hl(0, 'LineNr', {fg='#edecee', bg='#15141b', bold=true})
          vim.api.nvim_set_hl(0, 'LineNrBelow', {fg='#edecee'})
      end
  }
  
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {

          -- LSP Support
          {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},


          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
      }
  }
end)
