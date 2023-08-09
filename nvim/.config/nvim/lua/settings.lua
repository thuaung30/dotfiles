vim.g.mapleader = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.wrap = false

-- cursor
vim.opt.guicursor = "n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor"

-- proper search
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.gdefault = true

-- sane splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- scroll
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 300

vim.opt.colorcolumn = "80"

-- White characters
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4 -- 1 tab = 2 spaces
vim.opt.shiftwidth = 4 -- indentation rule
vim.opt.formatoptions = 'qnj1' -- q  - comment formatting; n - numbered lists; j - remove comment when joining lines; 1 - don't break after one-letter word
vim.opt.expandtab = true -- expand tab to spaces

-- swap and undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- pretty
vim.cmd([[
    set t_Co=256
    set t_ut=
]])
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.cmd.colorscheme "rose-pine"

-- blamer.nvim settings
vim.g.blamer_enabled = false
vim.g.blamer_delay = 500
vim.g.blamer_show_in_visual_modes = 0
vim.g.blamer_show_in_insert_modes = 0
vim.g.blamer_prefix = " > "
