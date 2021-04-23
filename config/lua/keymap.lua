local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', ',', '', {})
vim.g.mapleader = ','  -- 'vim.g' sets global variables


options = { noremap = true }
map('n', '<leader><esc>', ':nohlsearch<cr>', options)
map('n', '<leader>n', ':bnext<cr>', options)
map('n', '<leader>p', ':bprev<cr>', options)

map('n', '<C-p>', ':lua require"telescope.builtin".find_files()<CR>', options)
-- map('n', '<C-p>', ':Telescope k<cr>', options)


-- nvim-tree
map('n', '<leader>tt', ':NvimTreeToggle<CR>', options)
map('n', '<leader>ff', ':NvimTreeFindFile<CR>', options)
