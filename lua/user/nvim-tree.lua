local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

local function open_nvim_tree(data)
	local directory = vim.fn.isdirectory(data.file) == 1

	if not directory then
		return
	end

	vim.cmd.cd(data.file)

	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
vim.opt.termguicolors = true

nvim_tree.setup({
	view = {
		width = 30,
	},
	reload_on_bufenter = true,
	filters = {
		exclude = { ".env", ".env.local" },
	},
	diagnostics = {
		enable = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	git = {
		enable = true,
		ignore = true,
		timeout = 500,
	},
	renderer = {
		icons = {
			glyphs = {
				default = "",
				symlink = "",
				git = {
					unstaged = "",
					staged = "S",
					unmerged = "",
					renamed = "➜",
					deleted = "",
					untracked = "U",
					ignored = "◌",
				},
				folder = {
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
				},
			},
		},
		root_folder_modifier = ":~",
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
})
