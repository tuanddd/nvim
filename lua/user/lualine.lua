local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

lualine.setup({
	theme = "nord",
	sections = { lualine_c = { { "filename", path = 1 } }, lualine_x = {}, lualine_y = {}, lualine_z = { "filetype" } },
})
