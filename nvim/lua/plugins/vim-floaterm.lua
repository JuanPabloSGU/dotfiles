local setup, floaterm = pcall(require, "vim-floaterm")
if not setup then
	return
end

floaterm.setup()
