local opt = vim.opt
local cmd = vim.cmd
local utils = require("utils")

-- Use completion-nvim in every buffer
-- cmd([[autocmd BufEnter * lua require'completion'.on_attach()]])

-- Use <Tab> and <S-Tab> to navigate through popup menu
-- utils.map("i", "<Tab>", [[pumvisible() ? "\<C-n>" : "\<Tab>"]], {expr = true})
-- utils.map("i", "<S-Tab>", [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], {expr = true})

-- Set completeopt to have a better completion experience
opt.completeopt = { "menuone", "noinsert", "noselect" }

-- Avoid showing extra message when using completion
-- opt.shortmess = opt.shortmess + {"c"}
opt.shortmess = "filnxtToOFIWc"

-- Options
vim.g.completion_matching_strategy_list = { "exact", "substring", "fuzzy", "all" }
vim.g.ompletion_matching_ignore_case = 1
vim.g.completion_matching_smart_case = 1

vim.g.completion_enable_server_trigger = 0
vim.g.completion_trigger_keyword_length = 2
vim.g.completion_trigger_on_delete = 1

vim.g.completion_chain_complete_list = {
	default = {
		-- { complete_items = { 'lsp', 'snippet', 'buffers' } },
		{ complete_items = { "lsp", "snippet", "buffers", "ts" } },
		{ mode = { "<c-p>" } },
		{ mode = { "<c-n>" } },
	},
}

vim.g.completion_enable_auto_paren = 1

-- Popup menu
vim.g.completion_popup_border = "double"
vim.g.completion_menu_length = 32
vim.g.completion_abbr_length = 32
opt.pumheight = 16

-- utils.map("i", "<C-j>", [[<Plug>(completion_next_source)]], {noremap = false})
-- utils.map("i", "<C-k>", [[<Plug>(completion_prev_source)]], {noremap = false})
