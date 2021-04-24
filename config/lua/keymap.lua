local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', ',', '', {})
vim.g.mapleader = ','  -- 'vim.g' sets global variables


options = { noremap = true }
map('n', '<leader><esc>', ':nohlsearch<cr>', options)
map('n', '<leader>n', ':bnext<cr>', options)
map('n', '<leader>p', ':bprev<cr>', options)

map('n', '<C-p>', ':lua require"telescope.builtin".find_files()<CR>', options)
map('n', '<leader>e', ':lua require"telescope.builtin".file_browser()<CR>', options)
map('n', '<leader>fd', ':lua require"telescope.builtin".grep_string()<CR>', options)
map('n', '<leader>gp', ':lua require"telescope.builtin".live_grep()<CR>', options)


-- buffers
map('n', '[b', ':BufferLineCyclePrev<CR>', options)
map('n', ']b', ':BufferLineCycleNext<CR>', options)


-- Sends text selected in visualmode to termbin
vim.api.nvim_exec([[
xnoremap <leader>tb <esc>:'<,'>:w ! nc termbin.com 9999<CR>
]], true)

-- Git Gutter
map('n', '<leader>g', ':GitGutterToggle<CR>', options)
map('n', '<leader>ha', ':GitGutterStageHunk<CR>', options)
map('n', '<leader>hu', ':GitGutterRevertHunk<CR>', options)

-- Toggle word wrap
map('n', '<leader>w', ':set wrap!<CR>', options)

-- Toggle spell checking
map('n', '<leader>ss', ':set spell!<CR>', options)
vim.api.nvim_command('set spelllang=en_us')

-- Toggle line numbers
map('n', '<leader>l', ':set number!<CR>', options)

-- NERDCommenter
vim.api.nvim_exec([[
:nmap <leader>/ <Plug>NERDCommenterToggle
:vmap <leader>/ <Plug>NERDCommenterToggle
]], true)

