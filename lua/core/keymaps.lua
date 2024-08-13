
local map = vim.keymap.set
local defaults = { noremap = true, silent = true }

vim.g.mapleader = " "

--map("i", "{<cr>", "{<cr>}<ESC>kA<CR>", {})
-- closing_pairs = {"}", ")", "]", "\"", "'", ">"}
-- opening_pairs = {"{", "(", "[", "\"", "'", "<"}
-- for key, chr in pairs(opening_pairs) do
-- 	map('i', chr, chr..closing_pairs[key]..'<esc>i', {})
-- end

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<leader>pv", vim.cmd.Ex)
map("n", "<C-q>", "", defaults) 

map("n", "<leader>s", ":w<CR>")

map("n", "d", "\"_d", {})
map("n", "c", "\"_c", {})

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "<leader>o", ":<C-u>call append(line('.'), repeat([''], v:count1))<CR>", defaults)
map("n", "<leader>O", ":<C-u>call append(line('.')-1, repeat([''], v:count1))<CR>", defaults)

map("n", "<leader>e", ":NvimTreeToggle<cr>", defaults)

map("n", "<leader>to", "<cmd>tabnew<CR>")
map("n", "<leader>tx", "<cmd>tabclose<CR>")
map("n", "<leader>tf", "<cmd>tabnew %<CR>")

map("n", "<leader>u", "<cmd>UndotreeToggle<CR>")
