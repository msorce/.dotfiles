local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- lsp
  use {"neovim/nvim-lspconfig"}
  use {"hrsh7th/nvim-compe"}

  -- whichkey
  use {"folke/which-key.nvim"}

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- explorer
  use { 'kyazdani42/nvim-tree.lua'}

  -- You can alias plugin names
  use {'dracula/vim'}
end)
