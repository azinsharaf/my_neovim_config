
local keymap = vim.keymap.set
local opt = {
  noremap = true,
  silent = true,
}

-- general
keymap('n', '<leader>w', ':w<CR>', opt)
keymap('n', '<leader>n', '<cmd>enew<cr>', opt)

keymap('n', 'J', 'mzJ`z', opt)
keymap('n', 'N', 'Nzzzv', opt)

-- keep the cursor in center (needs to be tested)

keymap('n', '<C-d>', '<C-d>zz', opt)
keymap('n', '<C-u>', '<C-u>zz', opt)
keymap('n', 'n', 'nzzzv', opt)
keymap('n', 'N', 'Nzzzv', opt)

-- move highlighted rows

keymap('v', "J", ":m '>+1<cr>gv=gv")
keymap('v', "K", ":m '<-2<cr>gv=gv")



-- quick replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- telescope
local builtin = require('telescope.builtin')

keymap('n', '<leader>ff', function() builtin.find_files() end, opt)
keymap('n', '<leader>fw', function() builtin.live_grep() end, opt)
keymap('n', '<leader>fx', function() builtin.buffers() end, opt)
keymap('n', '<leader>fh', function() builtin.help_tags() end, opt)
keymap('n', '<leader>fo', function() builtin.oldfiles() end, opt)
keymap('n', '<leader>fg', function() builtin.git_files() end, opt)
keymap('n', '<leader>ft', function() builtin.colorscheme() end, opt)
keymap('n', '<leader>fr', function() builtin.registers() end, opt)
keymap('n', '<leader>fs', function() builtin.spell_suggest() end, opt)
keymap('n', '<leader>fk', function() builtin.keymaps() end, opt)

-- telescope file browser
keymap('n', '<leader>fb', ":Telescope file_browser<cr>", opt)
