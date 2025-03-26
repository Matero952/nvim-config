require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {"lua_ls", "jedi_language_server", "rust_analyzer"}
})

local lspconfig = require("lspconfig")

-- Setup Lua Language Server (as an example)
lspconfig.lua_ls.setup({})
lspconfig.jedi_language_server.setup({})
lspconfig.rust_analyzer.setup({})

local cmp = require("cmp")

cmp.setup({
    mapping = {
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = "nvim_lsp" }
    }
})

