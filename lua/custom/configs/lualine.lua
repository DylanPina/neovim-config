local lualine_require = require("lualine_require")
lualine_require.require = require

local icons = require("custom.configs.icons").icons

vim.o.laststatus = vim.g.lualine_laststatus
local opts = {
  options = {
    theme = require("custom.configs.lualine-theme").theme(),
    globalstatus = true,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
  },
  sections = {
    lualine_a = {
      {
        "mode",
        icon = "",
        separator = { left = "", right = "" },
      },
    },
    lualine_b = {
      {
        "branch",
        icon = "",
        separator = { left = "", right = "" },
      },
    },

    lualine_c = {
      {
        "diagnostics",
        separator = { left = "", right = "" },
        symbols = {
          error = icons.diagnostics.Error,
          warn = icons.diagnostics.Warn,
          info = icons.diagnostics.Info,
          hint = icons.diagnostics.Hint,
        },
      },
      { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
      -- prints path of current file relative to working project directory
      { "vim.fn.expand('%:p:~:.')" },
    },
    lualine_x = {
      {
        "filetype",
        icons_enabled = true,
      },
      -- stylua: ignore
      {
        function() return require("noice").api.status.command.get() end,
        cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
        color = function()
          local name = "Statement"
          ---@type {foreground?:number}?
          ---@diagnostic disable-next-line: deprecated
          local hl = vim.api.nvim_get_hl and vim.api.nvim_get_hl(0, { name = name }) or vim.api.nvim_get_hl_by_name(name, true)
          ---@diagnostic disable-next-line: undefined-field
          local fg = hl and (hl.fg or hl.foreground)
          return fg and { fg = string.format("#%06x", fg) } or nil
        end
      },
      -- stylua: ignore
      -- {
      --     function() return require("noice").api.status.mode.get() end,
      --     cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
      -- },
      -- stylua: ignore
      {
        function() return "  " .. require("dap").status() end,
        cond = function () return package.loaded["dap"] and require("dap").status() ~= "" end,
      },
      {
        require("lazy.status").updates,
        cond = require("lazy.status").has_updates,
      },
      {
        "diff",
        symbols = {
          added = icons.git.added,
          modified = icons.git.modified,
          removed = icons.git.removed,
        },
        source = function()
          local gitsigns = vim.b.gitsigns_status_dict
          if gitsigns then
            return {
              added = gitsigns.added,
              modified = gitsigns.changed,
              removed = gitsigns.removed,
            }
          end
        end,
      },
    },
    lualine_y = {
      { "progress", separator = " ", padding = { left = 1, right = 0 } },
      { "location", icon = "", padding = { left = 0, right = 1 } },
    },
    lualine_z = {
      function()
        return " " .. os.date("%I:%M%p")
      end,
    },
  },
  extensions = { "nvim-tree", "lazy" },
}

return opts
