-- helpers
local silent = {silent = true}
local silentNoremap = {noremap = true, silent = true}
local silentExpNoremap = {noremap=true, expr = true, silent = true}
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

--Remap for dealing with word wrap
remap('n', 'k', "v:count == 0 ? 'gk' : 'k'", silentExpNoremap)
remap('n', 'j', "v:count == 0 ? 'gj' : 'j'", silentExpNoremap)

-- Terminal window navigation
vim.cmd([[
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>
]])
