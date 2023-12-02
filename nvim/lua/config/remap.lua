vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>wv", "<C-w>v") -- split window veritcally
keymap.set("n", "<leader>wh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>wx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

keymap.set("t", "<C-o>", [[<C-\><C-n><esc><cr>]])

-- nvim-tree
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")

-- Comment
keymap.set("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")

-- Floatterm
keymap.set("n", "<M-[>", "<cmd>FloatermPrev<CR>")
keymap.set("n", "<M-]>", "<cmd>FloatermNext<CR>")
keymap.set("n", "<M-;>", "<cmd>FloatermKill<CR>")
keymap.set("n", "<M-'>", "<cmd>FloatermNew<CR>")
keymap.set("n", "<M-\\>", "<cmd>FloatermToggle<CR>")
keymap.set("t", "<M-[>", "<cmd>FloatermPrev<CR>")
keymap.set("t", "<M-]>", "<cmd>FloatermNext<CR>")
keymap.set("t", "<M-;>", "<cmd>FloatermKill<CR>")
keymap.set("t", "<M-'>", "<cmd>FloatermNew<CR>")
keymap.set("t", "<M-\\>", "<cmd>FloatermToggle<CR>")
