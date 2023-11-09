return {
	  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
			-- api_key_cmd = "op read op://Personal/6s64vzhbkcibzl4vij472y3yi4/credential --no-newline"
			api_key_cmd = "cat /home/walke/.dotfiles/nvim/openai"
		})
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
	--[[ {
		'zbirenbaum/copilot.lua',
		cmd = 'Copilot',
		build = ':Copilot auth',
		opts = {
			suggestion = { enabled = false },
			panel = { enabled = false },
			filetypes = {
				markdown = true,
				help = true,
			},
		},
	},

	{
		'zbirenbaum/copilot-cmp',
		dependencies = 'copilot.lua',
		opts = {},
		config = function(_, opts)
			local copilot_cmp = require 'copilot_cmp'
			copilot_cmp.setup(opts)
		end,
	}, ]]
}
