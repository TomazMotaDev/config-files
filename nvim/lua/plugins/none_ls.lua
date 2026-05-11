return {
	"nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				--null_ls.builtins.completion.luasnip,
                --[[
				null_ls.builtins.diagnostics.checkstyle.with({
					extra_args = { "-c", "/sun_checks.xml" },
				}),--]]
                null_ls.builtins.formatting.clang_format,
				require("none-ls.diagnostics.eslint_d"),
				null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.black,

			},
		})

		vim.keymap.set("n", "<leader>fc", vim.lsp.buf.format, {})
	end,
}
