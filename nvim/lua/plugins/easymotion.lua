local utils = require("utils")

vim.g.EasyMotion_do_mapping = 0
vim.g.EasyMotion_keys = "ASDFGHJKL;"
vim.g.EasyMotion_smartcase = 1
vim.g.EasyMotion_use_upper = 1

utils.map("", "<Leader>", "<Plug>(easymotion-prefix)", { noremap = false })
utils.map("", "<Leader>l", "<Plug>(easymotion-lineanywhere)", { noremap = false })
utils.map("", "<Leader>j", "<Plug>(easymotion-overwin-line)", { noremap = false })
utils.map("", "<Leader>s", "<Plug>(easymotion-s)", { noremap = false })
