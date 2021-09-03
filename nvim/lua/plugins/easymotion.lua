local utils = require("utils")

vim.g.EasyMotion_do_mapping = 0
vim.g.EasyMotion_keys = "ASDFGHJKL;"
vim.g.EasyMotion_smartcase = 1
vim.g.EasyMotion_use_upper = 1

utils.map("n", "<Leader>", "<Plug>(easymotion-prefix)", { noremap = false })
utils.map("n", "<Leader>l", "<Plug>(easymotion-lineanywhere)", { noremap = false })
utils.map("n", "<Leader>j", "<Plug>(easymotion-overwin-line)", { noremap = false })
utils.map("n", "<Leader>s", "<Plug>(easymotion-s)", { noremap = false })
utils.map("v", "<Leader>", "<Plug>(easymotion-prefix)", { noremap = false })
utils.map("v", "<Leader>l", "<Plug>(easymotion-lineanywhere)", { noremap = false })
utils.map("v", "<Leader>j", "<Plug>(easymotion-overwin-line)", { noremap = false })
utils.map("v", "<Leader>s", "<Plug>(easymotion-s)", { noremap = false })
