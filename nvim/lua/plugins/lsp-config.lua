return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "jdtls", "pyright", "clangd", "ts_ls", "tailwindcss", "eslint" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.jdtls.setup({})
            lspconfig.pyright.setup({
                ---@diagnostic disable-next-line: undefined-global
                capabilities = capabilities,
            })
            lspconfig.clangd.setup({
                on_attach = function(client, bufnr)
                    client.server_capabilities.signatureHelpProvider = false
                    on_attach(client, bufnr)
                end,
                capabilities = capabilities,
            })
            lspconfig.ts_ls.setup({
                on_attach = on_attach,
                capabilities = capabilities,
            })
            lspconfig.tailwindcss.setup({
                on_attach = on_attach,
                capabilities = capabilities,
            })
            lspconfig.eslint.setup({
                on_attach = on_attach,
                capabilities = capabilities,
            })

            --keybiding for lsp
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
            vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
            vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
            vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
            vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        end,
    },
}
