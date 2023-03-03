local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[ packadd packer.nvim ]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
	augroup packer_use_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use popup window
packer.init({
	opt_default = false,
	display = {
		open_fn = require("packer.util").float,
		working_sym = "🛠",
		error_sym = "🧨",
		done_sym = "✅",
		removed_sym = "🔥",
		moved_sym = "",
		show_all_info = true,
	},
})

-- Install plugins here
packer.startup(function(use)
	-- Packer manages itself
	use("wbthomason/packer.nvim")

	-- These 2 are always required when installing any other plugins
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")

	-- nvim-web-devicons
	use("kyazdani42/nvim-web-devicons")

	-- Auto close brackets, curly braces, etc...
	use("windwp/nvim-autopairs")

	-- Enable using gc to comment
	use("numToStr/Comment.nvim")

	-- Colorscheme
	use({
		"catppuccin/nvim",
		as = "catppuccin",
	})

	-- completion plugin
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-nvim-lsp")

	-- Snippets
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")

	-- Language Server Protocol, null-ls
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use("jose-elias-alvarez/null-ls.nvim")
	use({
		"weilbith/nvim-code-action-menu",
		cmd = "CodeActionMenu",
	})

	-- Fuzzy finder, jump to file, etc...
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Syntax highlighting for languages
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- Auto close html tags
	use("windwp/nvim-ts-autotag")

	-- Help Comment.nvim to comment jsx/tsx elements
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- Git
	use("lewis6991/gitsigns.nvim")

	-- Nvimtree
	use("kyazdani42/nvim-tree.lua")

	-- Bufferline a.k.a tabs as we know it
	use("akinsho/bufferline.nvim")
	use("moll/vim-bbye")

	-- Floating terminal
	use("akinsho/toggleterm.nvim")

	-- Lualine (status line)
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})

	-- Neovim greeter
	use("goolord/alpha-nvim")

	-- Smooth scrolling
	use("karb94/neoscroll.nvim")

	-- Manage project easier
	use("ahmedkhalf/project.nvim")

	-- Prettify the quick fix list
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})

	-- Markdown preview
	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
			vim.g.mkdp_auto_close = 0
		end,
		ft = { "markdown" },
	})

	-- Function signature
	use("ray-x/lsp_signature.nvim")

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
