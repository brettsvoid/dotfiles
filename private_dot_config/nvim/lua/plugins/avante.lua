-- https://github.com/yetone/avante.nvim
return {
	"yetone/avante.nvim",
	event = "VeryLazy",
	lazy = false,
	version = false, -- set this if you want to always pull the latest change
	opts = {
		provider = "claude",
		auto_suggestions_provider = "copilot",
		copilot = {
			endpoint = "https://api.githubcopilot.com",
			model = "gpt-4o-2024-05-13",
			proxy = nil, -- [protocol://]host[:port] Use this proxy
			allow_insecure = false, -- Allow insecure server connections
			timeout = 30000, -- Timeout in milliseconds
			temperature = 0,
			max_tokens = 4096,
		},
		claude = {
			endpoint = "https://api.anthropic.com",
			model = "claude-3-5-sonnet-20241022",
			timeout = 30000, -- Timeout in milliseconds
			temperature = 0,
			max_tokens = 8000,
		},
		openai = {
			endpoint = "https://api.openai.com/v1",
			model = "gpt-4o",
			timeout = 30000, -- Timeout in milliseconds
			temperature = 0,
			max_tokens = 4096,
		},
	},
	-- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
	build = "make",
	-- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		--- The below dependencies are optional,
		--'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
		"echasnovski/mini.icons",
		"zbirenbaum/copilot.lua", -- for providers='copilot'
		{
			-- support for image pasting
			"HakonHarnes/img-clip.nvim",
			event = "VeryLazy",
			opts = {
				-- recommended settings
				default = {
					embed_image_as_base64 = false,
					prompt_for_file_name = false,
					drag_and_drop = {
						insert_mode = true,
					},
					-- required for Windows users
					use_absolute_path = true,
				},
			},
		},
		{
			"MeanderingProgrammer/render-markdown.nvim",
			optional = true,
			config = function(_, opts)
				local ok, render_markdown = pcall(require, "render-markdown")
				if ok then
					-- If plugin exists, extend its configuration
					opts.file_types = vim.list_extend(opts.file_types or {}, { "Avante" })
					render_markdown.setup(opts)
				else
					-- If plugin doesn't exist, set up new configuration
					require("render-markdown").setup({
						file_types = { "markdown", "Avante" },
					})
				end
			end,
		},
	},
}
