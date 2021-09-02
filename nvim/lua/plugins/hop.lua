local utils = require("utils")

require("hop").setup({ keys = "asdfghjkl;", quit_key = "q" })

utils.map("n", "<Leader>j", [[<cmd>lua require'hop'.hint_lines_skip_whitespace()<cr>]])
utils.map("n", "/w", [[<cmd>lua require'hop'.hint_words()<cr>]])
-- utils.map("n", "//", [[<cmd>lua require'hop'.hint_patterns()<cr>]])
