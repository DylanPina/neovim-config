return {
  'simrat39/rust-tools.nvim',
  ft = 'rust',
  dependencies = {
    'neovim/nvim-lspconfig', -- Required for LSP support
    'nvim-lua/plenary.nvim', -- Required for various utilities
  },
  opts = function()
    return {
      tools = {
        -- Automatically set inlay hints
        autoSetHints = true,
        -- Hover actions
        hover_actions = {
          auto_focus = true,
        },
      },
      server = {
        settings = {
          ['rust-analyzer'] = {
            checkOnSave = {
              command = 'clippy',
            },
            inlayHints = {
              bindingModeHints = { enable = true },
              closureReturnTypeHints = { enable = true },
              lifetimeElisionHints = { enable = 'skip_trivial' },
              typeHints = { enable = true },
            },
          },
        },
      },
    }
  end,
  config = function(_, opts)
    require('rust-tools').setup(opts)
  end,
}
