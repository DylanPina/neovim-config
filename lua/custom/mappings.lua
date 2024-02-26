local M = {}

-- <C> -> Ctrl
-- <leader> -> Space
-- <A> -> alt
-- <S> -> shift
-- <M> -> meta (cmd key on mac)
-- <D> -> super (windows key on windows)
-- <kPoint> -> Keypad Point (.)
-- <kEqual> -> Keypad Equal (=)
-- <kPlus> -> Keypad Plus (+)
-- <kMinus> -> Keypad Minus (-)

M.custom = {
  n = {
    -- Select entire file
    ["<C-a>"] = {"ggVG"},
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger"
    }
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}

M.buffer = {
  n = {
    -- Close all buffers
    ["<leader>ba"] = {":%bdelete<CR>"},
    -- Close all but current buffer
    ["<leader>bd"] = {":%bd|e#<CR>"},
  }
}

M.nvim_tree = {
  n = {
    -- Collapse directories recursively
    ["<leader>tc"] = {":NvimTreeCollapse<CR>"}
  }
}

M.symbols_outline = {
  n = {
    ["<leader>o"] = {":SymbolsOutline<CR>"}
  }
}

-- M.copilot = {
--   i = {
--     ["<C-l>"] = {
--       function()
--         vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
--       end,
--       "Copilot Accept",
--       {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
--     }
--   }
-- }

M.codeium = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn['codeium#Accept'](), '')
      end,
      "Codeium Accept",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    }
  }
}

return M
