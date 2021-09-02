require("formatter").setup({
	filetype = {
		rust = {
			-- Rustfmt
			function()
				return {
					exe = "rustfmt",
					args = { "--emit=stdout" },
					stdin = true,
				}
			end,
		},
		go = {
			-- gofmt
			function()
				return {
					exe = "gofmt",
					args = {},
					stdin = true,
				}
			end,
		},
		javascript = {
			-- Prettier
			function()
				return {
					exe = "npx prettier",
					args = {
						"--stdin-filepath",
						vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
						"--print-width",
						100,
						"--tab-width",
						4,
					},
					stdin = true,
				}
			end,
		},
		python = {
			-- yapf
			function()
				return {
					exe = "yapf",
					args = {},
					stdin = true,
				}
			end,
		},
		solidity = {
			-- Prettier
			function()
				return {
					exe = "npx prettier",
					args = {
						"--stdin-filepath",
						vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
						"--print-width",
						100,
						"--tab-width",
						4,
					},
					stdin = true,
				}
			end,
		},
		lua = {
			-- luafmt
			function()
				return {
					exe = "stylua",
					args = {},
					stdin = false,
				}
			end,
		},
		sh = {
			-- Shell Script Formatter
			function()
				return {
					exe = "shfmt",
					args = { "-i", 4 },
					stdin = true,
				}
			end,
		},
	},
})

-- Format on save
vim.api.nvim_exec(
	[[
        augroup FormatAutogroup
          autocmd!
          autocmd BufWritePost *.rs,*.go,*.js,*.py,*sol,*.lua,*.sh FormatWrite
        augroup END
    ]],
	true
)
