return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "ts_ls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "saghen/blink.cmp" },
        config = function()
            local capabilities = require("blink.cmp").get_lsp_capabilities()

            vim.lsp.config("lua_ls", { capabilities = capabilities })
            vim.lsp.config("pyright", { capabilities = capabilities })
            vim.lsp.config("ts_ls", { capabilities = capabilities })

            vim.lsp.enable({ "lua_ls", "pyright", "ts_ls" })
        end
    }
}
