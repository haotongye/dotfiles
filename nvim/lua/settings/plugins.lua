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
	{
		"ms-jpq/chadtree",
		branch = "chad",
		run = ":CHADdeps",
	},
}

local language = {
	"neovim/nvim-lspconfig",
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	},
	"TovarishFin/vim-solidity",
}

local editing = {
	"phaazon/hop.nvim",
	"easymotion/vim-easymotion",
	{
		"b3nj5m1n/kommentary",
		setup = function()
			vim.g.kommentary_create_default_mappings = false
		end,
	},
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

-- tabline
-- file explorer

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
