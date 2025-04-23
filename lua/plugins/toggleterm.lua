return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      start_in_insert = true,
      persist_mode = false,
    }
  end,
}
