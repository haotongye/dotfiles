local utils = require("utils")
local lsp = require("lspconfig")

local on_attach = function(client, bufnr)
	-- Completion
	require("completion").on_attach()

	-- Mappings
	local opts = { noremap = true, silent = true }
	utils.map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	utils.map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	utils.map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	utils.map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	utils.map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	utils.map("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	utils.map("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
	utils.map("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
	utils.map("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
	-- utils.map("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
	-- utils.map("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
	-- utils.map("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
	-- utils.map("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
	-- utils.map("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	-- utils.map("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	-- utils.map("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
	-- utils.map("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end

-- Rust
lsp.rust_analyzer.setup({ on_attach = on_attach })

-- Go
-- lsp.golsp.setup({}))

-- Javscript, Typescrit
lsp.tsserver.setup({ on_attach = on_attach })

-- Python
lsp.pyright.setup({ on_attach = on_attach })

-- Lua
local lua_lsp_binary_path = "/usr/bin/lua-language-server"
local lua_lsp_root_path = "/usr/share/lua-language-server/"

local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

lsp.sumneko_lua.setup({
	on_attach = on_attach,
	cmd = { lua_lsp_binary_path, "-E", lua_lsp_root_path .. "main.lua" },
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
				-- Setup your lua path
				path = runtime_path,
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
})

-- Bash
lsp.bashls.setup({ on_attach = on_attach })
