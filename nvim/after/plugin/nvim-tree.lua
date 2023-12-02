-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
    update_cwd = true,
    actions = {
        open_file = {
            resize_window = true,
            window_picker = {
                enable = true,
            },
        },
    },
    filters = {
        dotfiles = true,
    }
})
