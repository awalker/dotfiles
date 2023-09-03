vim.opt.relativenumber = true
vim.keymap.set('n', '<leader>e', function()
	-- require('neo-tree').NeoTree.toggle('filesystem', true)
	require('neo-tree.command').execute { toggle = true, reveal = true, dir = vim.loop.cwd() }
end, { desc = 'Explore File Tree' })
