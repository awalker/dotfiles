return {
	'ribelo/taskwarrior.nvim',
	-- opts = {
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
	-- },
	-- or
	-- config = true,
	enabled = false,
	dependencies = {
		'nvim-telescope/telescope.nvim',
	},
	init = function()
		-- vim.keymap.set('n', '<leader>t', require('taskwarrior_nvim').browser { 'ready' }, { desc = 'Taskwarrior' })
	end,
}
