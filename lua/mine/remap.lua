-- Open netrw directory listing.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Treat long lines as break lines.
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- Move the selected lines up/down.
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Retain cursor position with J.
vim.keymap.set("n", "J", "mzJ`z")
-- Keep cursor in middle of screen with C-d/C-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep cursor in middle of screen with search next/previous.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste/delete without changing buffer contents.
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Yank to system clipboard.
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Disable Q.
vim.keymap.set("n", "Q", "<nop>")
