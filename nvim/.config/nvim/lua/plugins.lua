
return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Color scheme
  use { 'sainnhe/gruvbox-material' }
  use { 'bluz71/vim-nightfly-guicolors' }
  use { 'arcticicestudio/nord-vim' }

  -- Fuzzy finder
  use { 'nvim-lua/plenary.nvim' }
  use { 'nvim-lua/popup.nvim' }
  use { 'nvim-telescope/telescope.nvim' }

  -- Neuron.nvim
   use { 'oberblastmeister/neuron.nvim', branch = 'unstable' } 

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
  use { 'nvim-treesitter/playground' }
  
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

  -- VimWiki
  use { 'vimwiki/vimwiki' }


  -- Calendar
  use { 'itchyny/calendar.vim' }

  -- Colors
  use { 'norcalli/nvim-colorizer.lua' }

  -- Training vim motions
  use { 'tjdevries/train.nvim' }

  -- Galaxyline
  use {
  'glepnir/galaxyline.nvim',
    branch = 'main',
    after = colorscheme,
    -- your statusline
    config = function() require'config/galaxyline' end,
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
end)
