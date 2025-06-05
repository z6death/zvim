require("config.lazy")
vim.lsp.enable('clangd')
vim.cmd("colorscheme zet")

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.wo.number = true

local ls = require("luasnip")

map({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
map({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
map({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

map({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})

local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

map('n', '<leader>n', ':Neotree toggle<CR>', opts)
map('n', '<leader>c', ':Neotree focus<CR>', opts)

map('n', '<leader>h', '<C-w>h', opts)
map('n', '<leader>j', '<C-w>j', opts)
map('n', '<leader>k', '<C-w>k', opts)
map('n', '<leader>l', '<C-w>l', opts)

map('n', '<C-s>', ':SessionSave<CR>', opts)
map('n', '<C-o>', ':Telescope session-lens search_session<CR>', opts)

vim.opt.expandtab = true     
vim.opt.shiftwidth = 4      
vim.opt.tabstop = 4        
vim.opt.softtabstop = 4 

