local opts = {
  options = {
    themeable = true,
    always_show_bufferline = true,
    max_name_length = 30,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Tree",
        highlight = "Directory",
        text_align = "left",
      },
    },
  },
}
return opts
