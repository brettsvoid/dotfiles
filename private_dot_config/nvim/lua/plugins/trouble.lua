return {
	"folke/trouble.nvim",
	-- dependencies = {
	-- 	"nvim-tree/nvim-web-devicons",
	-- },
	cmd = { "Trouble" },
	keys = {
		{
			"<leader>xx",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>xX",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Buffer Diagnostics (Trouble)",
		},
		{
			"<leader>cs",
			"<cmd>Trouble symbols toggle focus=false<cr>",
			desc = "[S]ymbols (Trouble)",
		},
		{
			"<leader>cd",
			"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
			desc = "LSP [D]efinitions / references / ... (Trouble)",
		},
		{
			"<leader>xl",
			"<cmd>Trouble loclist toggle<cr>",
			desc = "[L]ocation List (Trouble)",
		},
		{
			"<leader>xq",
			"<cmd>Trouble qflist toggle<cr>",
			desc = "[Q]uickfix List (Trouble)",
		},
	},
	opts = {
		modes = {
			lsp = {
				win = { position = "right" },
			},
		},
		preview = {
			type = "floating",
		},
	},
}
