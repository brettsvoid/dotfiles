-- Autoformat
return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true })
			end,
			mode = { "n", "v" },
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		default_format_opts = {
			lsp_format = "fallback",
		},
		-- Define formatters by filetype
		formatters_by_ft = {
			bash = { "shfmt" },
			lua = { "stylua" },
			sh = { "shfmt" },
			sql = { "sql_formatter" },
			toml = { "taplo" },
			zsh = { "shfmt" },
			-- Conform can also run multiple formatters sequentially
			python = { "isort", "black" },

			-- You can use a sub-list to tell conform to run *until* a formatter
			-- is found.
			-- css = { "prettierd", "prettier", stop_after_first = true },
			-- html = { "prettierd", "prettier", stop_after_first = true },
			-- javascript = { "prettierd", "prettier", stop_after_first = true },
			-- javascriptreact = { "prettierd", "prettier", stop_after_first = true },
			-- json = { "prettierd", "prettier", stop_after_first = true },
			-- jsonc = { "prettierd", "prettier", stop_after_first = true },
			-- markdown = { "prettierd", "prettier", stop_after_first = true },
			-- scss = { "prettierd", "prettier", stop_after_first = true },
			-- typescript = { "prettierd", "prettier", stop_after_first = true },
			-- typescriptreact = { "prettierd", "prettier", stop_after_first = true },
			-- yaml = { "prettierd", "prettier", stop_after_first = true },
			css = { "prettier" },
			html = { "prettier" },
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			json = { "prettier" },
			jsonc = { "prettier" },
			markdown = { "prettier" },
			scss = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
			yaml = { "prettier" },

			["*"] = { "injected" },
		},
		-- Set up format-on-save
		format_on_save = function(bufnr)
			-- Disable "format_on_save lsp_fallback" for languages that don't
			-- have a well standardized coding style. You can add additional
			-- languages here or re-enable it for the disabled ones.
			local ignore_filetypes = { "c", "cpp" }
			if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
				return
			end

			-- Disable autoformat for files in a certain path
			local bufname = vim.api.nvim_buf_get_name(bufnr)
			if bufname:match("/node_modules/") then
				return
			end

			return { timeout_ms = 5000 }
		end,
		formatters = {
			shfmt = {
				prepend_args = { "-i", "2" }, -- indent with two spaces
			},
			sql_formatter = {
				prepend_args = { "-c", vim.fn.expand("~/.config/sql_formatter.json") },
			},
		},
		notify_on_error = true,
	},
	init = function()
		-- If you want the formatexpr, here is the place to set it
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
