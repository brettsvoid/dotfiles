-- https://github.com/olexsmir/gopher.nvim
return {
	"olexsmir/gopher.nvim",
	enabled = false,
	ft = "go",
	-- branch = "develop"
	-- (optional) will update plugin's deps on every update
	build = function()
		vim.cmd.GoInstallDeps()
	end,
	---@type gopher.Config
	opts = {},
}
