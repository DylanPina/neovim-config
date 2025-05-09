-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- save file without auto-formatting
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- quit file
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- select entire file
vim.keymap.set('n', '<C-a>', 'gg<S-v>G', opts)

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>bn', '<cmd> enew <CR>', opts) -- new buffer
vim.keymap.set('n', '<leader>bda', ':%bd!<CR>', opts) -- delete all buffers
vim.keymap.set('n', '<leader>bdo', ':%bd | e# | bd!#<CR>', opts) -- delete other buffers

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- make split windows equal width & height
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- close current split window

-- Navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts) -- open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- close current tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) --  go to next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) --  go to previous tab

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- ToggleTerm
vim.keymap.set('n', '<leader>tt', ':ToggleTerm direction=float<CR>', opts)

-- Exit terminal mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], opts)

-- Window navigation while in terminal
vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]], opts)
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], opts)
vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]], opts)

-- Copilot
vim.keymap.set('i', '<C-l>', 'copilot#Accept("\\<CR>")', {
  desc = 'Accept Copilot suggestion',
  expr = true,
  replace_keycodes = false,
  silent = true,
})
vim.keymap.set('n', '<leader>ce', '<cmd>Copilot enable<cr>', {
  desc = 'Enable Copilot',
})
vim.keymap.set('n', '<leader>cd', '<cmd>Copilot disable<cr>', {
  desc = 'Disable Copilot',
})

-- Nvim Tree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', opts) -- toggle nvimtree
vim.keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>', opts) -- toggle nvimtree

-- Trouble
vim.keymap.set('n', '<leader>tda', '<cmd>Trouble diagnostics toggle<cr>', {
  desc = 'Diagnostics (Trouble)',
})
vim.keymap.set('n', '<leader>tdb', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', {
  desc = 'Buffer Diagnostics (Trouble)',
})
vim.keymap.set('n', '<leader>ts', '<cmd>Trouble symbols toggle focus=false<cr>', {
  desc = 'Symbols (Trouble)',
})
vim.keymap.set('n', '<leader>tl', '<cmd>Trouble lsp toggle focus=false win.position=right<cr>', {
  desc = 'LSP Definitions / references / ... (Trouble)',
})
vim.keymap.set('n', '<leader>tL', '<cmd>Trouble loclist toggle<cr>', {
  desc = 'Location List (Trouble)',
})
vim.keymap.set('n', '<leader>tQ', '<cmd>Trouble qflist toggle<cr>', {
  desc = 'Quickfix List (Trouble)',
})

-- Alpha
vim.keymap.set('n', '<leader>a', '<cmd>Alpha<cr>', { desc = 'Open Alpha dashboard' }) -- Alpha

-- Oil
vim.keymap.set('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open parent directory in Oil' })
