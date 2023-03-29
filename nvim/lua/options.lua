o = vim.opt
g = vim.g
g.mapleader = " "
vim.scriptencoding = "utf-8"
o.encoding = "utf-8"
o.fileencoding = "utf-8"
o.relativenumber = true
o.title = true
o.autoindent = true
o.smartindent = true
o.hlsearch = false
o.showcmd = true
o.cmdheight = 1
o.laststatus = 2
o.expandtab = true
o.scrolloff = 10
o.shell = "zsh"
o.ignorecase = true
o.smarttab = true
o.breakindent = true
o.shiftwidth = 4
-- Make splits below and to the right
o.splitbelow = true
o.splitright = true
o.tabstop = 4
-- Don't wrap lines
o.wrap = false
o.backspace = "start,eol,indent"
o.colorcolumn = "79"
-- Search into subfolders
o.path:append { "**" }
o.cursorline = false
o.signcolumn = "yes"
o.termguicolors = true
-- Enable mouse
o.mouse = 'a'
-- Always display tabline
o.showtabline = 2
o.clipboard:append { "unnamedplus" }  -- Share system clipboard
-- Change Directory automatically when we switch files/buffers
o.autochdir = true
-- Persistent undos, even after closing vim, how cool
local xdg_config_path = os.getenv("XDG_DATA_HOME")
o.undofile = true
o.undodir = xdg_config_path .. "/nvim/undodir"
-- Enable file backups
o.backup = true
o.backupdir = xdg_config_path .. "/nvim/backupdir" 
-- Autocompletion
o.completeopt = "menu,menuone,noselect"
-- Ultisnips
g.UltiSnipsSnippetDirectories = { "ultisnippets" }
g.UltiSnipsExpandTrigger = "<Tab>"
g.UltiSnipsJumpForwardTrigger = "<Tab>"
g.UltiSnipsJumpBackwardTrigger = "<S-Tab>"
-- Required for ultisnips
g.loaded_python_provider = 1
g.python_host_skip_check = 1
g.python_host_prog = "/usr/bin/python3"
g.python3_host_prog = "/usr/bin/python3"
g.python3_host_skip_check = 1
g.my_browser = "chromium"
-- Disable netrw, recommended for nvim-tree
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
-- Set conceal
vim.wo.conceallevel = 2
-- Set pdf viewer
g.vimtex_view_method = "zathura"
g.vimtex_view_general_viewer = "/sbin/zathura"
g.vimtex_compiler_latexmk_engines = { ["_"] = "-pdf", ["xelatex"] = "-xelatex" }
