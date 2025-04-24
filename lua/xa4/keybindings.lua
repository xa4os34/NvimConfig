vim.cmd('set splitright')
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>;v", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-n>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>rs", [[:%s/<C-r>"/<C-r>"/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>ex", "<cmd>!exec +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>rs", "<cmd>vertical term scilab -nw -e \"$(cat %)\"<CR>", { silent = true })

vim.keymap.set("n", "<leader>ep", "<cmd>e ~/.config/nvim/lua/xa4/packer.lua<CR>");
vim.keymap.set("n", "<leader>ek", "<cmd>e ~/.config/nvim/lua/xa4/keybindings.lua<CR>");
vim.keymap.set("n", "<leader>el", "<cmd>e ~/.config/nvim/after/plugin/lsp.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>gl", "<cmd>CellularAutomaton game_of_life<CR>")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

