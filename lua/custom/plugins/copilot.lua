return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = {
          auto_trigger = true,
          debounce = 150,
          keymap = {
            accept = false,
          },
        },
      }
    end,
  },
  { 'AndreM222/copilot-lualine' },
}
