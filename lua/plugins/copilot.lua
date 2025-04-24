return {
  'github/copilot.vim',
  event = 'VeryLazy',
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
  end,
}
