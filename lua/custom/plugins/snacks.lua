return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  opts = {
    animate = {
      -- your animate configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    bigfile = {
      -- your bigfile configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      notify = true,
      size = 1.2 * 1024 * 1024,
    },
    lazygit = {},
  },
  keys = {
    {
      '<leader>gb',
      function()
        Snacks.git.blame_line()
      end,
      desc = 'Git Blame Line',
    },
    {
      '<leader>gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazygit',
    },
    {
      '<leader>gl',
      function()
        Snacks.lazygit.log()
      end,
      desc = 'Lazygit Log (cwd)',
    },
    {
      '<leader>un',
      function()
        Snacks.notifier.hide()
      end,
      desc = 'Dismiss All Notifications',
    },
    {
      '<leader>tt',
      function()
        Snacks.terminal()
      end,
      desc = 'Toggle Terminal',
    },
  },
}
