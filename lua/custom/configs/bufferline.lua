require("bufferline").setup({
  options = {
    numbers = "ordinal",
    always_show_bufferline = true,
    close_command = require('bufdelete').bufdelete,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Tree",
        highlight = "Directory",
        text_align = "left",
      },
    },
  },
})
