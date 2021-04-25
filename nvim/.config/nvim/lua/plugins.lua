
return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Color scheme
  use { 'sainnhe/gruvbox-material' }
  use { 'bluz71/vim-nightfly-guicolors' }
  use { 'arcticicestudio/nord-vim' }

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- LSP 
  use { 'neovim/nvim-lsp' }
  use { 'neovim/nvim-lspconfig' }
  -- Completion
  use { 'hrsh7th/nvim-compe' }
  -- Autopairs
  use { 'windwp/nvim-autopairs' }
  -- Snippets 
  use { 'rafamadriz/friendly-snippets' }
  use { 'hrsh7th/vim-vsnip' }
  use { 'hrsh7th/vim-vsnip-integ' }
    --   
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  
    -- Lua development
  use { 'tjdevries/nlua.nvim' }

  -- Vim dispatch
  use { 'tpope/vim-dispatch' }


  -- Gitgutter
  use { 'airblade/vim-gitgutter' }

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }
  -- Commentary for easy commenting
  use { 'tpope/vim-commentary' }
  use { 'tpope/vim-surround' }


  -- Calendar
  use { 'itchyny/calendar.vim' }
end)
