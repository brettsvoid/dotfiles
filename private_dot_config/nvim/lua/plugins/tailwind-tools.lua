-- https://github.com/luckasRanarison/tailwind-tools.nvim
return {
	{
		"luckasRanarison/tailwind-tools.nvim",
		name = "tailwind-tools",
		build = ":UpdateRemotePlugins",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-telescope/telescope.nvim", -- optional
			"neovim/nvim-lspconfig", -- optional
		},
		---@type TailwindTools.Option
		opts = {
			extension = {
				queries = { "typescriptreact" },
				patterns = {
					javascript = {
						"imageClassName=[\"']([^\"']+)[\"']",
					},
					typescript = {
						"imageclassname=[\"']([^\"']+)[\"']",
					},
					typescriptreact = {
						"imageclassname=[\"']([^\"']+)[\"']",
					},
				},
			},
		},
	},
}
