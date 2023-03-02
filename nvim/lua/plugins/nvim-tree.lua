local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[highlight NvimTreeIndentMarker guifg=#3Fc5FF ]])

nvimtree.setup({
	update_cwd = true,
	disable_netrw = true,
	hijack_netrw = true,
	hijack_cursor = true,
	hijack_unnamed_buffer_when_opening = false,
	actions = {
		open_file = {
			resize_window = true,
			window_picker = {
				enable = true,
			},
		},
	},
	filters = {
		dotfiles = false,
	},
})
