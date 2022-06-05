local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.formatting_sync()
				end,
			})
		end
	end,
	sources = {
		--
		formatting.rustfmt,
		formatting.prettier,
		formatting.stylua,
		formatting.rustywind,
		formatting.stylelint,
		--
		diagnostics.tsc,
		diagnostics.stylelint,
		diagnostics.actionlint,
		diagnostics.solhint,
		diagnostics.jsonlint,
		diagnostics.sqlfluff.with({
			extra_args = { "--dialect", "postgres" },
		}),
		diagnostics.yamllint,
		--
		code_actions.eslint_d,
		code_actions.refactoring.with({
			filetypes = { "lua" },
		}),
	},
})
