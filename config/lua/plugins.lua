-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Don't forget to run `:PackerSync`

-- ensure that packer is installed
-- local install_path = vim.fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
-- local execute = vim.api.nvim_command
-- if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    -- execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    -- execute 'packadd packer.nvim'
-- end
-- vim.cmd('packadd packer.nvim')

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use {
    'akinsho/nvim-bufferline.lua',
        requires = {
          'sainnhe/edge'
        },
        config = require'setup-bufferline',
  }

  use 'preservim/nerdcommenter'
  use 'airblade/vim-gitgutter'  
end)

vim.api.nvim_command('PackerSync')
