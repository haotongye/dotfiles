require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"rust",
		"go",
		"javascript",
		"python",
		"lua",
	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	incremental_selection = {
		enable = true,
		--[[ keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        }, ]]
	},
	indent = {
		enable = true,
	},
})
