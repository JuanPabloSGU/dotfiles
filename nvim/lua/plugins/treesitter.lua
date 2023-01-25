local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	highlight = {
		enable = false,
	},
	indent = { enable = true },
	autotag = { enable = true },
	ensure_installed = {},
	auto_install = false,
	additional_vim_regex_highlighting = false,
})
