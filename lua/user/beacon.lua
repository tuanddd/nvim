local status_ok, beacon = pcall(require, "beacon")
if not status_ok then
	return
end

beacon.setup({
	enable = false,
	size = 40,
	fade = true,
	minimal_jump = 1,
	show_jumps = true,
	focus_gained = true,
	shrink = false,
	timeout = 200,
	ignore_buffers = {},
	ignore_filetypes = {},
})
