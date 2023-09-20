return {
  'ray-x/go.nvim',
  dependencies = { -- optional packages
    'ray-x/guihua.lua',
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('go').setup()
  end,
  event = { 'CmdlineEnter' },
  ft = { 'go', 'gomod' },
  build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  keys = {
    { '<leader>csj', '<cmd>GoAddTag json<cr>', desc = 'Add json struct tags' },
    { '<leader>csy', '<cmd>GoAddTag yaml<cr>', desc = 'Add yaml struct tags' },
    { '<leader>ci', '<cmd>GoIfErr<cr>', desc = 'Go if err' },
    { '<leader>cd', '<cmd>GoCmt<cr>', desc = 'Generate Doc Comment' },
    { '<leader>ct', '<cmd>GoTestsAdd<cr>', desc = 'Generate Test' },
  },
}
