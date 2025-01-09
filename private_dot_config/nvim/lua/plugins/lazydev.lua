-- https://github.com/folke/lazydev.nvim
return {
	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				"$HOME/.config/nvim",
				--'$HOME/.config/wezterm',
				--{ path = 'luvit-meta/library', words = { 'vim%.uv' } },
				--{ path = 'LazyVim', words = { 'LazyVim' } },
				--{ path = 'wezterm-types', mods = { 'wezterm' } },
			},
		},
	},
	--{ 'Bilal2453/luvit-meta', lazy = true },
	{ -- optional blink completion source for require statements and module annotations
		"saghen/blink.cmp",
		opts = {
			sources = {
				-- add lazydev to your completion providers
				default = { "lazydev", "lsp", "path", "snippets", "buffer" },
				providers = {
					lazydev = {
						name = "LazyDev",
						module = "lazydev.integrations.blink",
						-- make lazydev completions top priority (see `:h blink.cmp`)
						score_offset = 100,
					},
				},
			},
		},
	},
}
