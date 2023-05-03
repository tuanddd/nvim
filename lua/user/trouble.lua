local status_ok, trouble = pcall(require, "trouble")
if not status_ok then
	return
end

trouble.setup({
	mode = "workspace_diagnostics",
	signs = {
		-- icons / text used for a diagnostic
		error = "",
		warning = "",
		hint = "",
		information = "",
		other = "﫠",
	},
})
