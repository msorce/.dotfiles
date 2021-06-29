-- helpers
local silent = {silent = true}
local silentNoremap = {noremap = true, silent = true}
local remap = function(mode, original, new, config)
	vim.api.nvim_set_keymap(mode, original, new, config)
end

-- leader
remap('n', '<Space>', '<NOP>', silentNoremap)
vim.g.mapleader = ' '

-- explorer
remap('n', '<Leader>e', ':NvimTreeToggle<CR>', silentNoremap)

-- better window movement
remap('n', '<C-h>', '<C-w>h', silent)
remap('n', '<C-j>', '<C-w>j', silent)
remap('n', '<C-k>', '<C-w>k', silent)
remap('n', '<C-l>', '<C-w>l', silent)

-- better indenting
remap('v', '>', '>gv', silentNoremap)
remap('v', '<', '<gv', silentNoremap)

-- move line up and down in vis mode
remap('x', '<C-j>', [[:m '>+1<CR>gv=gv]], silentNoremap)
remap('x', '<C-k>', [[:m '<-2<CR>gv=gv]], silentNoremap)

-- Switch buffer tab
remap('n', '<TAB>', ':bnext<CR>', silentNoremap)
remap('n', '<S-TAB>', ':bprevious<CR>', silentNoremap)
