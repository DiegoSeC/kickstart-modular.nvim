return {
  'hrsh7th/cmp-cmdline',
  dependencies = { 'hrsh7th/cmp-buffer' },
  config = function()
    local cmp = require 'cmp'
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources {
        { name = 'path' },
        { name = 'buffer' },
      },
    })
  end,
}
