return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	opts = function(_, opts)
		local builtins = require("null-ls").builtins
		opts.sources = vim.list_extend(opts.sources or {}, {
			sources = {
				require("none-ls.code_actions.eslint"),
				require("none-ls.diagnostics.eslint"),
			},
		})
		opts.sources = vim.list_extend(opts.sources or {}, {
			builtins.formatting.biome,

			-- or if you like to live dangerously like me:
			builtins.formatting.biome.with({
				args = {
					"check",
					"--apply-unsafe",
					"--formatter-enabled=true",
					"--organize-imports-enabled=true",
					"--skip-errors",
					"$FILENAME",
				},
			}),
		})
	end,
}
