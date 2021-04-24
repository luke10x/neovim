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


-- buffers
map('n', '[b', ':BufferLineCyclePrev<CR>', options)
map('n', ']b', ':BufferLineCycleNext<CR>', options)


-- Sends text selected in visualmode to termbin
local result = vim.api.nvim_exec([[
xnoremap <leader>tb <esc>:'<,'>:w ! nc termbin.com 9999<CR>
]], true)

-- Git Gutter
map('n', '<leader>g', ':GitGutterToggle<CR>', options)
map('n', '<leader>ha', ':GitGutterToggle<CR>', options)
-- highlight clear SignColumn
-- "nmap <Leader>ha <Plug>GitGutterStageHunk
-- "nmap <Leader>hu <Plug>GitGutterRevertHunk

-- " Fugitive
-- nmap <leader>gb :Gblame<CR>
