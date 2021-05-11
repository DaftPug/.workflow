local utils = require("utils")

local cmd = vim.cmd
local indent = 4

cmd "syntax enable"
cmd "filetype plugin indent on"
cmd "filetype plugin on"
cmd "set nocompatible"
cmd "set iskeyword+=-"
cmd "set shortmess+=c"
cmd "set inccommand=split"
cmd "set ts=4"
cmd "set sw=4"

-- Python executable
cmd 'let g:python3_host_prog="/opt/homebrew/bin/python3"'

-- Calendar.vim
cmd "let g:calendar_google_calendar=1"

-- Taskwiki
cmd 'let taskwiki_data_location="~/NextCloud/.task"'

-- Global Options
utils.opt("o", "background", "dark")
utils.opt("o", "backup", false)
utils.opt("o", "writebackup", false)
utils.opt("o", "compatible", false)
utils.opt("o", "hlsearch", true)
utils.opt("o", "ignorecase", true)
utils.opt("o", "incsearch", true)
utils.opt("o", "lazyredraw", true)
utils.opt("o", "mouse", "a")
utils.opt("o", "showcmd", true)
utils.opt("o", "showmatch", true)
utils.opt("o", "smartcase", true)
utils.opt("o", "splitbelow", true)
utils.opt("o", "splitright", true)
utils.opt("o", "timeoutlen", 300)
utils.opt("o", "ttimeoutlen", 100)
utils.opt("o", "termguicolors", true)
utils.opt("o", "t_Co", "256")
utils.opt("o", "undodir", "~/.vim/undodir")
utils.opt("o", "updatetime", 100)
utils.opt("o", "wildmode", "longest,list")
utils.opt("o", "clipboard", "unnamed,unnamedplus")
utils.opt("o", "cmdheight", 2)
utils.opt("o", "showtabline", 0)
utils.opt("o", "hidden", true)
utils.opt("o", "scrolloff", 4)
utils.opt("o", "shiftround", true)
-- utils.opt('o', 'python3_host_prog', '/opt/homebrew/bin/python3')

-- Buffer Local Options
utils.opt("b", "autoindent", true)
utils.opt("b", "expandtab", true)
utils.opt("b", "shiftwidth", indent)
utils.opt("b", "smartindent", true)
utils.opt("b", "swapfile", false)
utils.opt("b", "tabstop", indent)
utils.opt("b", "undofile", true)
utils.opt("b", "textwidth", 120)

-- Window Local Options
utils.opt("w", "cursorline", true)
utils.opt("w", "number", true)
utils.opt("w", "wrap", false)
utils.opt("w", "relativenumber", true)
utils.opt("w", "signcolumn", "yes")

-- Highlight on yank
cmd "au TextYankPost * lua vim.highlight.on_yank {on_visual = false}"

-- Autocommand to format on save
utils.create_augroup({{"BufWritePost", "*", "FormatWrite"}}, "Format")
