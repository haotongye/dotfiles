-- Automatically run :PackerCompile whenever this file is updated
vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])

local init = {
	"wbthomason/packer.nvim",
}

local ui = {
	"overcache/NeoSolarized",
	{
		"glepnir/galaxyline.nvim",
		branch = "main",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	},
	"norcalli/nvim-colorizer.lua",
	--[[ "vim-airline/vim-airline",
	"vim-airline/vim-airline-themes", ]]
	{
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	},
	{
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	},
	"lukas-reineke/indent-blankline.nvim",
	{
		"ms-jpq/chadtree",
		branch = "chad",
		run = ":CHADdeps",
	},
	{
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	},
	{
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	},
}

local language = {
	"neovim/nvim-lspconfig",
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	},
	"onsails/lspkind-nvim",
	"folke/lsp-colors.nvim",
	"TovarishFin/vim-solidity",
}

local editing = {
	"easymotion/vim-easymotion",
	{
		"b3nj5m1n/kommentary",
		setup = function()
			vim.g.kommentary_create_default_mappings = false
		end,
	},
	{ "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" },
	"nvim-lua/completion-nvim",
	"steelsojka/completion-buffers",
	"nvim-treesitter/completion-treesitter",
	"mhartington/formatter.nvim",
}

local other = {
	"aserowy/tmux.nvim",
	{
		"nvim-telescope/telescope.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	},
}

local packer = require("packer")
local plugins = {}
for _, set in pairs({ init, ui, language, editing, other }) do
	for _, plugin in ipairs(set) do
		table.insert(plugins, plugin)
	end
end
packer.startup({
	plugins,
	config = {
		display = {
			open_fn = require("packer.util").float,
		},
	},
})
