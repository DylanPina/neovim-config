# dsp.nvim

![dsp.nvim](/images/readme-header.png)

This is a modular, modern Neovim configuration designed for productivity, code navigation, and a beautiful UI. It leverages the [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager and a curated set of plugins for development in multiple languages.

## Features

- **Plugin Management**: Uses `lazy.nvim` for fast, lazy-loaded plugin management.
- **LSP & Autocompletion**: Language Server Protocol (LSP) support, autocompletion, and code formatting for bascially all programming languages.
- **Fuzzy Finding**: Powerful file, buffer, and symbol search with Telescope.
- **Syntax Highlighting**: Advanced highlighting and code navigation with Treesitter.
- **Git Integration**: Inline git status, signs, and commands.
- **UI Enhancements**: Statusline, bufferline, file explorer, dashboard, and more.
- **Markdown & Notes**: Obsidian integration for note-taking.
- **Terminal Integration**: Toggleable floating terminal.
- **Themes**: Catppuccin

## Plugin Highlights

- **LSP & Completion**: `nvim-lspconfig`, `mason.nvim`, `nvim-cmp`, `LuaSnip`, `none-ls.nvim`
- **Fuzzy Finder**: `telescope.nvim`
- **Syntax & Editing**: `nvim-treesitter`, `nvim-surround`, `nvim-autopairs`, `indent-blankline`
- **UI**: `lualine.nvim`, `bufferline.nvim`, `alpha-nvim`, `nvim-tree.lua`, `oil.nvim`, `toggleterm.nvim`
- **Git**: `gitsigns.nvim`, `vim-fugitive`, `vim-rhubarb`
- **AI**: `copilot.vim`
- **Notes**: `obsidian.nvim`
- **Themes**: `catppuccin`, `nord.nvim`

## Custom Options

- Relative and absolute line numbers
- System clipboard integration
- Smart case search
- Persistent undo
- No swap or backup files
- Always show tabline and signcolumn
- Transparent backgrounds

## Key Mappings

- `<Space>` is the leader key
- `<C-s>`: Save file
- `<C-q>`: Quit file
- `<C-a>`: Select all
- `<Tab>` / `<S-Tab>`: Next/previous buffer
- `<leader>x`: Close buffer
- `<leader>v` / `<leader>h`: Vertical/horizontal split
- `<C-h/j/k/l>`: Move between splits
- `<leader>tt`: Toggle floating terminal
- `<C-n>`: Toggle file explorer (NvimTree)
- `<leader>a`: Open dashboard (Alpha)
- `<leader>gs`: Git status (Fugitive)
- `<leader>tda`: Toggle diagnostics (Trouble)
- `-`: Open parent directory in Oil
- And many more (see `lua/core/keymaps.lua`)

## Installation

1. **Clone this repo** into your Neovim config directory:
   ```sh
   git clone git@github.com:DylanPina/neovim-config.git ~/.config/nvim
   ```
2. **Open Neovim**. The config will auto-install [lazy.nvim](https://github.com/folke/lazy.nvim) and all plugins.
3. **Install LSPs**: Install language servers and formatters using `:Mason`.

## Directory Structure

- `init.lua`: Entry point, loads core and plugin modules
- `lua/core/`: Editor options, keymaps, and customizations
- `lua/plugins/`: Plugin specifications and configurations

## Requirements

- Neovim 0.9+
- [git](https://git-scm.com/)
- For some plugins: [make](https://www.gnu.org/software/make/), [node](https://nodejs.org/), [python3](https://www.python.org/), [ripgrep](https://github.com/BurntSushi/ripgrep)

## Customization

Edit files in `lua/core/` for options and keymaps, and `lua/plugins/` to add or tweak plugins.

---

Happy vimming
