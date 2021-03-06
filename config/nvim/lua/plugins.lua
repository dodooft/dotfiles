return require('packer').startup(function()
	use { 'wbthomason/packer.nvim', opt = true }
	-- Development
	use { 'b3nj5m1n/kommentary' }
	use {
		'lewis6991/gitsigns.nvim',
		config = function() require('gitsigns').setup() end
	}
	use { 'sakshamgupta05/vim-todo-highlight' }
	use { 'kdheepak/lazygit.nvim' }
	-- Latex
	-- use { 'lervag/vimtex' }
	use { 'jakewvincent/texmagic.nvim' }
	-- Markdown
	-- use { 'npxbr/glow.nvim', run = ':GlowInstall' }
	-- Color scheme
	use { 'ayu-theme/ayu-vim' }
	use { 'kyazdani42/nvim-web-devicons' }
	-- Fuzzy finder
	use { 'nvim-lua/plenary.nvim' }
	use { 'nvim-lua/popup.nvim' }
	use { 'nvim-telescope/telescope.nvim' }
	-- LSP config
	use {
		"williamboman/nvim-lsp-installer",
		"neovim/nvim-lspconfig",
	}
	-- use { 'neovim/nvim-lspconfig' }
	-- use { 'hrsh7th/nvim-compe' }
	-- use { 'tzachar/compe-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-compe' }
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use { 'nvim-treesitter/playground' }
	-- Status line
	use {
		"NTBBloodbath/galaxyline.nvim",
		-- your statusline
		config = function()
		require("statusline")
		end,
		-- some optional icons
		requires = { "kyazdani42/nvim-web-devicons", opt = true }
	}
	-- Buffer line
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	-- Telescope fzf
	use { 'nvim-telescope/telescope-fzy-native.nvim' }
	--[[ use {
		'dhruvasagar/vim-prosession', -- Easy session switching and also auto-starts sessions
		requires = {'tpope/vim-obsession'} -- Continuously update session files
	} ]]
	-- Waka time
	-- use { 'wakatime/vim-wakatime' }
	-- Copilot
	use { 'github/copilot.vim' }
end)
