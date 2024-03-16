local M = {}
M.theme = function()
	local colors = {
		darkgray = "#16161d",
		gray = "#727169",
		file = "#a9b1d5",
		innerbg = nil,
		outerbg = "#3a4260",

		normal_tokyonight = "#7aa1f6",
		insert_tokyonight = "#9ece6a",
		visual_tokyonight = "#bb9af7",
		replace_tokyonight = "#f7768e",
		command_tokyonight = "#e1af67",

		normal_catppuccin = "#89b4fb",
		insert_catpuccin = "#d1fac5",
		visual_catpuccin = "#cba7f7",
		replace_catpuccin = "#f28ba8",
		command_catpuccin = "#fdc6a8",
	}
	return {
		inactive = {
			a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		visual = {
			a = { fg = colors.darkgray, bg = colors.visual_catpuccin },
			b = { fg = colors.visual_catpuccin, bg = colors.outerbg },
			c = { fg = colors.file, bg = colors.innerbg },
		},
		replace = {
			a = { fg = colors.darkgray, bg = colors.replace_catpuccin },
			b = { fg = colors.replace_catpuccin, bg = colors.outerbg },
			c = { fg = colors.file, bg = colors.innerbg },
		},
		normal = {
			a = { fg = colors.darkgray, bg = colors.normal_catppuccin },
			b = { fg = colors.normal_catppuccin, bg = colors.outerbg },
			c = { fg = colors.file, bg = colors.innerbg },
		},
		insert = {
			a = { fg = colors.darkgray, bg = colors.insert_catpuccin },
			b = { fg = colors.insert_catpuccin, bg = colors.outerbg },
			c = { fg = colors.file, bg = colors.innerbg },
		},
		command = {
			a = { fg = colors.darkgray, bg = colors.command_catpuccin },
			b = { fg = colors.command_catpuccin, bg = colors.outerbg },
			c = { fg = colors.file, bg = colors.innerbg },
		},
	}
end
return M
