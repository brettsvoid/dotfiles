-- https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim
return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	cmd = {
		"MasonToolsInstall",
		"MasonToolsUpdate",
		"MasonToolsClean",
	},
	opts = {
		run_on_start = false,
		auto_update = false,
		ensure_installed = {
			"bashls",
			"html",
			"jsonlint",
			"jsonls",
			"lua_ls",
			"markdownlint",
			"marksman",
			"prettierd",
			"pyright",
			"shellcheck",
			"shfmt",
			"stylua",
			"taplo",
			"yamllint",
			"yamlls",
		},
	},
}
