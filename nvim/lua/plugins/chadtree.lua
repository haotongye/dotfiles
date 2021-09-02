local utils = require("utils")

vim.api.nvim_set_var("chadtree_settings", {
	view = {
		open_direction = "right",
		width = 32,
	},
	keymap = {
		primary = {},
		secondary = { "<CR>" },
		tertiary = { "<Tab>" },
		v_split = { "h" },
		h_split = { "v" },
	},
	theme = {
		text_colour_set = "env",
	},
})

utils.map("n", "<C-_>", "<cmd>CHADopen<cr>")
