vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "x", '"_x"')

keymap.set("n", "<leader>wv", "<C-w>v") -- split window veritcally
keymap.set("n", "<leader>wh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>wx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]])
keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]])
keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]])
keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]])
keymap.set("t", "<C-o>", [[<C-\><C-n><esc><cr>]])

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>m", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
