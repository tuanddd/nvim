local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then
	return
end

local masonlsp_status_ok, masonlsp = pcall(require, "mason-lspconfig")
if not masonlsp_status_ok then
	return
end

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

masonlsp.setup({
	ensure_installed = {
		"lua_ls",
		"unocss",
		"eslint",
		"elixirls",
		"gopls",
		"html",
		"graphql",
		"jsonls",
		"tsserver",
		"marksman",
		"solc",
		"tailwindcss",
		"yamlls",
	},
})
