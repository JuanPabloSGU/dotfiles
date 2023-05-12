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

-- which-key
keymap.set("n", "<leader>wk", "<cmd>WhichKey<CR>")

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

-- Comment
keymap.set("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")

-- LazyGit
keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>")

-- LSP
keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>") -- show definition, references
keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>") -- got to declaration
keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>") -- see definition and make edits in window
keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>") -- go to implementation
keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>") -- see available code actions
keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>") -- smart rename
keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>") -- show  diagnostics for line
keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>") -- show diagnostics for cursor
keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>") -- jump to previous diagnostic in buffer
keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>") -- jump to next diagnostic in buffer
keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>") -- show documentation for what is under cursor
keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>") -- see outline on right hand side
