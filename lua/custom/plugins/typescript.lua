return {
  {
    'nvim-treesitter/nvim-treesitter',
    optional = true,
    opts = function(_, opts)
      if opts.ensure_installed ~= 'all' then
        opts.ensure_installed = require('core').list_insert_unique(opts.ensure_installed, { 'javascript', 'typescript', 'tsx', 'jsdoc' })
      end
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    opts = function(_, opts)
      opts.ensure_installed = require('core').list_insert_unique(opts.ensure_installed, {})
    end,
  },
  {
    'jay-babu/mason-nvim-dap.nvim',
    optional = true,
    opts = function(_, opts)
      opts.ensure_installed = require('core').list_insert_unique(opts.ensure_installed, { 'js' })
    end,
  },
  {
    'vuki656/package-info.nvim',
    dependencies = { 'MunifTanjim/nui.nvim' },
    opts = {},
    event = 'BufRead package.json',
  },

  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {
    autocmds = {
      eslint_fix_on_save = {
        cond = function(client)
          return client.name == 'eslint' and vim.fn.exists ':EslintFixAll' > 0
        end,
        {
          event = 'BufWritePost',
          desc = 'Fix all eslint errors',
          callback = function()
            vim.cmd.EslintFixAll()
          end,
        },
      },
    },
    handlers = { tsserver = false }, -- disable tsserver setup, this plugin does it
    config = {
      ['typescript-tools'] = { -- enable inlay hints by default for `typescript-tools`
        settings = {
          tsserver_file_preferences = {
            includeInlayParameterNameHints = 'all',
            includeInlayParameterNameHintsWhenArgumentMatchesName = false,
            includeInlayFunctionParameterTypeHints = true,
            includeInlayVariableTypeHints = true,
            includeInlayVariableTypeHintsWhenTypeMatchesName = false,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayEnumMemberValueHints = true,
          },
        },
      },
    },
    ft = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' },
  },
  {
    'dmmulroy/tsc.nvim',
    cmd = 'TSC',
    opts = {},
  },
}
