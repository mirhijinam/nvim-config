vim.keymap.set('n', '<F9>', function()
    local file_path = vim.fn.expand('%:p')                      -- Gets the full path of the current file
    vim.cmd('botright 10split | terminal go run ' .. file_path) -- Runs Go file in a split
    vim.cmd('wincmd p')                                         -- Switches back to the previous window
end)

vim.keymap.set('n', '<F10>', function()
    local file_path = vim.fn.expand('%:p')                     -- Gets the full path of the current file
    vim.cmd('botright 5split | terminal python ' .. file_path) -- Runs Python file in a split
    vim.cmd('wincmd p')                                        -- Switches back to the previous window
end)

vim.keymap.set('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', {})

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/.local/bin/tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

vim.keymap.set("n", "<TAB>", "%", { noremap = true })

-- jump to the next/previous item in the quickfix/loclist of errors
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
