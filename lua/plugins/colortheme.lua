return {
  'shaunsingh/nord.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    -- Example config in lua
    vim.g.nord_contrast = true
    vim.g.nord_borders = false
    vim.g.nord_disable_background = true
    vim.g.nord_italic = false
    vim.g.nord_uniform_diff_background = true
    vim.g.nord_bold = false

    -- Load the colorscheme
    require('nord').set()

    local transparent_status_line = function()
      -- Allow override for status line
      vim.api.nvim_set_hl(0, 'StatusLine', { fg = 'NONE', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = 'NONE', bg = 'NONE' })
    end

    -- Toggle background transparency
    local bg_transparent = true

    local toggle_transparency = function()
      bg_transparent = not bg_transparent
      vim.g.nord_disable_background = bg_transparent
      vim.cmd [[colorscheme nord]]

      if bg_transparent then
        transparent_status_line()
      end
    end

    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })

    transparent_status_line()
  end,
}
