local utils = require("utils")
vim.g.airline_disable_statusline = 1

vim.g.airline_theme = "solarized"
vim.g.airline_solarized_bg = "dark"
vim.g.airline_powerline_fonts = 1

vim.g.airline_left_sep = ""
vim.g.airline_right_sep = ""
vim.g.airline_left_alt_sep = ""
vim.g.airline_right_alt_sep = ""

vim.g.airline_extensions = { "tabline" }
vim.g["airline#extensions#tabline#enabled"] = 1
vim.g["airline#extensions#tabline#show_tabs"] = 1
vim.g["airline#extensions#tabline#show_buffers"] = 0
vim.g["airline#extensions#tabline#show_tab_count"] = 0
vim.g["airline#extensions#tabline#tab_nr_type"] = 1
vim.g["airline#extensions#tabline#show_splits"] = 1
vim.g["airline#extensions#tabline#show_tab_nr"] = 1
vim.g["airline#extensions#tabline#show_tab_type"] = 0
vim.g["airline#extensions#tabline#show_close_button"] = 0
-- vim.g["airline#extensions#tabline#formatter"] = "webdevicons"

utils.map("n", "<Leader>1", "<Plug>AirlineSelectTab1", { noremap = false })
utils.map("n", "<Leader>2", "<Plug>AirlineSelectTab2", { noremap = false })
utils.map("n", "<Leader>3", "<Plug>AirlineSelectTab3", { noremap = false })
utils.map("n", "<Leader>4", "<Plug>AirlineSelectTab4", { noremap = false })
utils.map("n", "<Leader>5", "<Plug>AirlineSelectTab5", { noremap = false })
utils.map("n", "<Leader>6", "<Plug>AirlineSelectTab6", { noremap = false })
utils.map("n", "<Leader>7", "<Plug>AirlineSelectTab7", { noremap = false })
utils.map("n", "<Leader>8", "<Plug>AirlineSelectTab8", { noremap = false })
utils.map("n", "<Leader>9", "<Plug>AirlineSelectTab9", { noremap = false })
utils.map("n", "<Leader>0", "<Plug>AirlineSelectTab0", { noremap = false })
