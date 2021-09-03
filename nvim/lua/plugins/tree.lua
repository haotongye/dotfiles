local utils = require("utils")

vim.g.nvim_tree_side = "right"
vim.g.nvim_tree_width = 32
vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_follow_update_path = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_tab_open = 1
vim.g.nvim_tree_lsp_diagnostics = 1
vim.g.nvim_tree_update_cwd = 1
vim.g.nvim_tree_respect_buf_cwd = 1

vim.g.nvim_tree_show_icons = {
	folders = 1,
	files = 1,
	git = 1,
}

vim.g.nvim_tree_icons = {
	default = "",
	symlink = "",
	git = {
		deleted = "",
		ignored = "◌",
		renamed = "➜",
		staged = "✓",
		unmerged = "",
		unstaged = "✗",
		untracked = "★",
	},
	folder = {
		-- arrow_open = "",
		-- arrow_closed = "",
		default = "",
		open = "",
		empty = "",
		empty_open = "",
		symlink = "",
		symlink_open = "",
	},
	lsp = {
		hint = "",
		info = "",
		warning = "",
		error = "",
	},
}

vim.g.nvim_tree_window_picker_exclude = {
	filetype = { "packer", "qf" },
	buftype = { "terminal" },
}

utils.map("n", "<C-_>", ":NvimTreeToggle<CR>")
utils.map("i", "<C-_>", "<ESC>:NvimTreeToggle<CR>")

local tree_cb = require("nvim-tree.config").nvim_tree_callback
vim.g.nvim_tree_bindings = {
	{ key = "<C-h>", cb = tree_cb("vsplit") },
	{ key = "<C-v>", cb = tree_cb("split") },
	{ key = "I", cb = tree_cb("toggle_ignored") },
}
