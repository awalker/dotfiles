vim.opt.relativenumber = true
vim.keymap.set('n', '<leader>e', function()
		require('neo-tree').show("filesystem", true)
	end,
	{ desc = 'Explore File Tree' }
)
