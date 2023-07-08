return {
  'olexsmir/gopher.nvim',
  ft = 'go',
  lazy = true,
  config = function(_, opts)
    require('gopher').setup(opts)
  end,
  build = function()
    vim.cmd [[silent! GoInstallDeps]]
  end,
  keys = {
    { '<leader>csj', '<cmd>GoTagAdd json<cr>', desc = 'Add json struct tags' },
    { '<leader>csy', '<cmd>GoTagAdd yaml<cr>', desc = 'Add yaml struct tags' },
    { '<leader>ci', '<cmd>GoIfErr<cr>', desc = 'Go if err' },
    { '<leader>cd', '<cmd>GoCmt<cr>', desc = 'Generate Doc Comment' },
    { '<leader>ct', '<cmd>GoTestsAdd<cr>', desc = 'Generate Test' },
  },
}
