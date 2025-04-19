-- <C> -> Ctrl
-- <CR> -> Enter
-- <leader> -> Space
-- <A> -> alt
-- <S> -> shift
-- <M> -> meta (cmd key on mac)
-- <D> -> super (windows key on windows)
-- <kPoint> -> Keypad Point (.)
-- <kEqual> -> Keypad Equal (=)
-- <kPlus> -> Keypad Plus (+)
-- <kMinus> -> Keypad Minus (-)

local M = {}


M.custom = {
  n = {
    -- Select entire file
    ["<C-a>"] = {"ggVG"},
    -- Quit
    ["<C-q>"] = {":q<CR>"},
    -- Quit all and save forced
    ["<C-z>"] = {":wqa!<CR>"},
  }
}

M.telescope = {
  n = {
    -- Document symbols
    ["<leader>ds"] = {
      function()
        require("telescope.builtin").lsp_document_symbols()
      end,
      "Document Symbols"
    },
    -- Workspace symbols
    ["<leader>ws"] = {
      function()
        require("telescope.builtin").lsp_workspace_symbols()
      end,
      "Workspace Symbols"
    },
    ["<leader>fg"] = {
      function()
        require("telescope").extensions.live_grep_args.live_grep_args()
      end,
      "Live Grep (with args)"
    }
  }
}

M.lsp = {
  n = {
    ["<leader>lr"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "LSP Rename" },
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
    ["<leader>ba"] = { ":%bdelete<CR>" },
    -- Close all but current buffer
    ["<leader>bd"] = {
      function()
        local curwin = vim.api.nvim_get_current_win()
        local curpos = vim.api.nvim_win_get_cursor(curwin)
        -- Close all buffers except the current one
        vim.cmd("%bd|e#")
        vim.api.nvim_win_set_cursor(curwin, curpos)
      end,
      "Close other buffers without resetting cursor",
    },
  },
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

M.copilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
      end,
      "Copilot Accept",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    }
  }
}

-- M.codeium = {
--   i = {
--     ["<C-l>"] = {
--       function()
--         vim.fn.feedkeys(vim.fn['codeium#Accept'](), '')
--       end,
--       "Codeium Accept",
--       {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
--     }
--   }
-- }
--
M.spectre = {
  n = {
    ["<leader>ss"] = {
      "<cmd>lua require('spectre').open()<cr>",
      "Spectre",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    },
    ["<leader>sw"] = {
      "<cmd>lua require('spectre').open_visual()<cr>",
      "Spectre Visual",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    },
    ["<leader>s."] = {
      "<cmd>lua require('spectre').open_file_search()<cr>",
      "Spectre File",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    }
  },
  v = {
    ["<leader>sw"] = {
      "<esc><cmd>lua require('spectre').open_visual()<cr>",
      "Spectre Visual",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    },
    ["<leader>s."] = {
      "<esc><cmd>lua require('spectre').open_file_search()<cr>",
      "Spectre File",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    }
  },
}

M.flash = {
  n = {
    ["<leader>fs"] = {
      function() require("flash").jump() end,
      "Start flash search"
    },
    ["<leader>ft"] = {
      function() require("flash").treesitter() end,
      "Start flash treesitter"
    },
    ["<leader>fT"] = {
      function() require("flash").treesitter_search() end,
      "Start flash treesitter"
    }
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

return M
