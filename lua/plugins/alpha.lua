return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    local devicons = require 'nvim-web-devicons'
    local ascii_art_color = '#cba6f7'

    -- force-load your shada file (for MRU file list)
    vim.cmd 'silent! rshada'

    dashboard.section.header.val = {
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣤⣶⣶⣶⣶⣶⣦⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⠿⠿⠿⢿⣿⣿⣿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⢿⣿⣿⣿⡿⠿⠿⢿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⡄⠀⠀⠸⢿⣿⠟⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠘⢿⣿⡿⠁⠀⠀⣾⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣷⣾⣿⣿⣿⣿⣿⣿⠟⢹⠛⢿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⣸⡀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣠⣼⣿⣷⣤⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
      '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠈⠉⠁⠈⠉⠁⠉⠉⠀⠉⠉⠈⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    }

    -- Set ascii art highlight color
    vim.api.nvim_set_hl(0, 'AlphaHeader', { fg = ascii_art_color, bg = 'NONE', bold = true })
    dashboard.section.header.opts = {
      hl = 'AlphaHeader',
      -- you can also tweak its positioning, etc:
      position = 'center',
    }

    local telescope = require 'telescope.builtin'
    dashboard.section.buttons.val = {
      dashboard.button('f', '  Find file', telescope.find_files),
      dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('r', '  Recently used files', telescope.oldfiles),
      dashboard.button('t', '  Find text', telescope.live_grep),
      dashboard.button('c', '  Configuration', ':e ~/.config/nvim/init.lua<CR>'),
      dashboard.button('q', '  Quit Neovim', ':qa<CR>'),
    }

    -- build MRU list WITH icons
    local mru_count = 5
    local mru_buttons = {}
    for i, filepath in ipairs(vim.v.oldfiles) do
      if i > mru_count then
        break
      end

      local filename = vim.fn.fnamemodify(filepath, ':t')
      local ext = vim.fn.fnamemodify(filepath, ':e')
      local icon, icon_hl = devicons.get_icon(filename, ext, { default = true })
      local short = vim.fn.fnamemodify(filepath, ':~:.')
      local txt = string.format('%s  %s', icon, short)

      local btn = dashboard.button(tostring(i), txt, ':e ' .. filepath .. '<CR>')
      -- apply the icon’s highlight group
      btn.opts.hl = icon_hl

      table.insert(mru_buttons, btn)
    end

    dashboard.section.mru = {
      type = 'group',
      val = vim.list_extend({ { type = 'text', val = 'Recent Files', opts = { hl = 'Title', position = 'center' } } }, mru_buttons),
      opts = { position = 'center' },
    }

    -- stitch together the layout
    dashboard.config.layout = {
      { type = 'padding', val = 2 },
      dashboard.section.header,
      { type = 'padding', val = 1 },
      dashboard.section.buttons,
      { type = 'padding', val = 0 },
      dashboard.section.mru,
      { type = 'padding', val = 0 },
      dashboard.section.footer,
    }

    -- auto‐resize to fit longest entry
    local max_width = 0
    for _, section in ipairs { dashboard.section.buttons, dashboard.section.mru } do
      for _, item in ipairs(section.val) do
        if item.type == 'button' then
          local w = vim.fn.strdisplaywidth(item.val)
          if w > max_width then
            max_width = w
          end
        end
      end
    end
    max_width = max_width + 4

    dashboard.config.opts = dashboard.config.opts or {}
    dashboard.config.opts.width = max_width

    for _, section in ipairs { dashboard.section.buttons, dashboard.section.mru } do
      for _, item in ipairs(section.val) do
        if item.type == 'button' then
          item.opts.width = max_width
        end
      end
    end

    alpha.setup(dashboard.config)
  end,
}
