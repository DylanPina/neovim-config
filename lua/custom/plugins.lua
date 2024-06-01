local plugins = {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      return "custom.configs.dap"
    end
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, opts)
      require "custom.configs.dap"
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio"
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings("dap_python")
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "tailwindcss-language-server",
        "js-debugger",
        "black",
        "debugpy",
        "ruff",
        "pyright",
        "typescript-language-server",
        "eslint-lsp",
        "prettierd",
        "prettier",
        "clangd",
        "clang-format",
        "lua-language-server",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "html"
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "go",
        "rust",
        "css",
        "prisma"
      }
      return opts
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event="VeryLazy",
    config = function()
      require("treesitter-context").setup()
    end
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function()
      require "custom.configs.noice"
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    "mlaursen/vim-react-snippets"
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end
  },
  {
    "tpope/vim-fugitive",
    event = "VeryLazy"

  },
  {
    "simrat39/symbols-outline.nvim",
    event = "VeryLazy",
    config = function()
      require("symbols-outline").setup()
    end
  },
  -- {
  --   "github/copilot.vim",
  --   event = "VeryLazy",
  --   config = function()
  --     vim.g.copilot_no_tab_map = true;
  --     vim.g.copilot_assume_mapped = true;
  --   end
  -- },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      vim.g.codeium_no_map_tab = true
    end
  },
  {
    "folke/trouble.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function()
      return require "custom.configs.lualine"
    end
  },
  {
    "famiu/bufdelete.nvim",
    event = "VeryLazy",
  },
  {
    'nvim-pack/nvim-spectre',
    event = "VeryLazy",
  },
  {
    'fei6409/log-highlight.nvim',
    config = function()
      require('log-highlight').setup {}
    end,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    config = function()
      require("flash").setup({
        modes = {
          char = {
            enabled = false,
          },
        },
      })
    end,
  },
}

return plugins
