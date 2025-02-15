-- 设置变量，noremap表示不递归映射，silent表示不输出多余的信息
local opts = { noremap = true, silent = true }

-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t"
-- command_mode = "c",

vim.keymap.set("n", "<leader><tab>", ":e#<cr>:Beacon<cr>", opts)

-- user
vim.keymap.set("n", "<leader>rc", ":cd ~/dotfiles/.config/nvim<cr>:e ~/dotfiles/.config/nvim/init.lua<cr>", opts)
-- copy current file and cursor line to clipboard
vim.keymap.set("n", "<leader>ul", ':let @+ = expand("%") . ":" . line(".")<cr>', opts)

-- fix :set wrap
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- insert 模式下，跳到行首行尾
vim.keymap.set("i", "<C-a>", "<home>", opts)
vim.keymap.set("i", "<C-e>", "<end>", opts)
vim.keymap.set("i", "<C-f>", "<right>", opts)
vim.keymap.set("i", "<C-b>", "<left>", opts)
vim.keymap.set("i", "<C-p>", "<up>", opts)
vim.keymap.set("i", "<C-n>", "<down>", opts)

-- c-w = ratio windows
vim.keymap.set("n", "<C-w>J", ":sp<cr>", opts)
vim.keymap.set("n", "<C-w>L", ":vsp<cr>", opts)
vim.keymap.set("n", "<C-w>H", ":vsp<cr><C-w>h", opts)
vim.keymap.set("n", "<C-w>K", ":sp<cr><C-w>k", opts)
-- <C-w>o :only
-- <C-w>x <C-w>+ <C-w>- <C-w>= <C-w>< <C-w>>
vim.keymap.set("n", "<A-Up>", ":resize +2<cr>", opts)
vim.keymap.set("n", "<A-Down>", ":resize -2<cr>", opts)
vim.keymap.set("n", "<A-Left>", ":vertical resize -2<cr>", opts)
vim.keymap.set("n", "<A-Right>", ":vertical resize +2<cr>", opts)

-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Editor
vim.keymap.set("n", "<leader>1", ":noh<cr>", opts)
vim.keymap.set("n", "<leader>2", ":cclose<cr>", opts)

-- :help [m [{ https://stackoverflow.com/a/2109620/23877411
vim.keymap.set("n", "[f", "[m[{", opts)
vim.keymap.set("n", "]f", "]m]}", opts)
