local cmd = vim.cmd
local colors = require("colors")

cmd("autocmd VimEnter * highlight IndentBlanklineIndent guifg=" .. colors.base02 .. " blend=nocombine")
cmd("autocmd VimEnter * highlight IndentBlanklineSpaceChar guifg=" .. colors.base02 .. " blend=nocombine")
cmd("autocmd VimEnter * highlight IndentBlanklineContextChar guifg=#" .. colors.base01 .. " blend=nocombine")

vim.opt.listchars = {
	space = "⋅",
	eol = "↴",
}

require("indent_blankline").setup({
	space_char_blankline = " ",
	show_end_of_line = true,
	show_current_context = true,
	use_treesitter = true,
	char_highlight_list = {
		"IndentBlanklineIndent",
		"IndentBlanklineSpaceChar",
		"IndentBlanklineContextChar",
	},
	filetype_exclude = { "help" },
})
