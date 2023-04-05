local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    "bashls",
    "cssls",
    "dockerls",
    "html",
    "jsonls",
    "lua_ls",
    "tsserver",
    "pyright",
})

-- Configure lua language server for neovim
require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

vim.keymap.set("n", "<leader>fr", vim.lsp.buf.rename)
vim.keymap.set("n", "gn", ":lua vim.diagnostic.goto_next()<cr>zzzv")
vim.keymap.set("n", "gp", ":lua vim.diagnostic.goto_prev()<cr>zzzv")
