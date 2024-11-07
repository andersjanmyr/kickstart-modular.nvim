return {
  'nvim-neotest/neotest',
  dependencies = {
    'olimorris/neotest-phpunit',
  },
  config = function()
    local neotest = require 'neotest'
    vim.keymap.set('n', '<leader>t', ':lua require("neotest").run.run()<cr>', {})
    neotest.setup {
      adapters = {
        require 'neotest-phpunit',
      },
    }
  end,
}
