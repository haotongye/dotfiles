local cmd = vim.cmd
local utils = require("utils")
local actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
		vimgrep_arguments = {
			"rg",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		},
		prompt_prefix = "❯ ",
		selection_caret = "❯ ",
		entry_prefix = "  ",
		initial_mode = "insert",
		selection_strategy = "reset",
		sorting_strategy = "ascending",
		layout_strategy = "vertical",
		file_ignore_patterns = {},
		border = {},
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		disable_devicons = false,
		color_devicons = true,
		set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
	},
	i = {
		["<C-n>"] = actions.move_selection_next,
		["<C-p>"] = actions.move_selection_previous,
	},
})

utils.map("n", "<Leader>e", [[<cmd>lua require('telescope.builtin').find_files()<cr>]])

cmd([[autocmd VimEnter * highlight TelescopeBorder         guifg=#268bd2]])
cmd([[autocmd VimEnter * highlight TelescopePromptBorder   guifg=#268bd2]])
cmd([[autocmd VimEnter * highlight TelescopeResultsBorder  guifg=#268bd2]])
cmd([[autocmd VimEnter * highlight TelescopePreviewBorder  guifg=#268bd2]])
cmd([[autocmd VimEnter * highlight TelescopeMatching       guifg=#268bd2]])
cmd([[autocmd VimEnter * highlight TelescopeSelection guifg=#b58900 gui=bold]])
