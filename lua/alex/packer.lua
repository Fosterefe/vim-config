--  This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use "ellisonleao/gruvbox.nvim"
	use 'nvim-treesitter/nvim-treesitter'
	use("theprimeagen/harpoon")

	use({ 'rose-pine/neovim', as = 'rose-pine' })

	use { "catppuccin/nvim", as = "catppuccin" }

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Require

			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp',
				config = function()
					require 'cmp'.setup {
						snippet = {
							expand = function(args)
								require 'luasnip'.lsp_expand(args.body)
							end
						},

						sources = {
							{ name = 'luasnip' },
							-- more sources
						},
					}
				end
			},
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}

	}
end)
