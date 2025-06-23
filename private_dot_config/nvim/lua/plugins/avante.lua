-- https://github.com/yetone/avante.nvim
return {
	"yetone/avante.nvim",
	event = "VeryLazy",
	version = false, -- set this if you want to always pull the latest change
	opts = {
		---@alias Provider "claude" | "openai" | "azure" | "gemini" | "cohere" | "copilot" | string
		---@type Provider
		provider = "claude",
		auto_suggestions_provider = "claude",
		-- cursor_applying_provider = "openai",
		-- behaviour = {
		-- 	enable_cursor_planning_mode = true, -- enable cursor planning mode
		-- },
		-- web_search_engine = {
		-- 	provider = "tavily",
		-- 	proxy = nil,
		-- },
		--		vendors = {
		providers = {
			claude = {
				endpoint = "https://api.anthropic.com",
				model = "claude-3-5-sonnet-20241022",
				extra_request_body = {
					temperature = 0.75,
					max_tokens = 4096,
				},
			},
			openai = {
				endpoint = "https://api.openai.com/v1",
				model = "gpt-4o",
				extra_request_body = {
					temperature = 0,
					max_tokens = 32768,
				}
				--reasoning_effort = "medium"
			},
			copilot = {
				endpoint = "https://api.githubcopilot.com",
				--model = "gpt-4o",
				proxy = nil, -- [protocol://]host[:port] Use this proxy
				allow_insecure = false, -- Allow insecure server connections
				extra_request_body = {
					temperature = 0,
					max_tokens = 4096,
				}
			},
		-- groq = { -- define groq provider
		--     __inherited_from = 'openai',
		--     api_key_name = 'GROQ_API_KEY',
		--     endpoint = 'https://api.groq.com/openai/v1/',
		--     model = 'llama-3.3-70b-versatile',
		--     max_completion_tokens = 32768, -- remember to increase this value, otherwise it will stop generating halfway
		-- },
		--		},
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
		--"echasnovski/mini.pick", -- for file_selector provider mini.pick
		"nvim-telescope/telescope.nvim", -- for file_selector provider telescope
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
			-- Make sure to set this up properly if you have lazy=true
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
		-- Might be outdated
		-- {
		-- 	"MeanderingProgrammer/render-markdown.nvim",
		-- 	optional = true,
		-- 	config = function(_, opts)
		-- 		local ok, render_markdown = pcall(require, "render-markdown")
		-- 		if ok then
		-- 			-- If plugin exists, extend its configuration
		-- 			opts.file_types = vim.list_extend(opts.file_types or {}, { "Avante" })
		-- 			render_markdown.setup(opts)
		-- 		else
		-- 			-- If plugin doesn't exist, set up new configuration
		-- 			require("render-markdown").setup({
		-- 				file_types = { "markdown", "Avante" },
		-- 			})
		-- 		end
		-- 	end,
		-- },
	},
}
