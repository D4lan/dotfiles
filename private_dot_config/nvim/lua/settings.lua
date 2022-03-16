HOME = os.getenv("HOME")

vim.g.mapleader = ','

-- basic settings
vim.opt.encoding = "utf-8"
vim.opt.backspace = "indent,eol,start"
vim.opt.completeopt = {'menuone', 'noselect'}
vim.opt.history = 1000
vim.opt.startofline = true
vim.opt.keywordprg = ':help' -- Use help instead of :man
vim.opt.ignorecase = true -- Ignore case in command mode
vim.opt.spelllang = 'en_us'

-- Mapping waiting time
vim.opt.timeout = false
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 100

-- Display
vim.opt.showmatch  = true -- show matching brackets
vim.opt.scrolloff = 3 -- always show 3 rows from edge of the screen
vim.opt.synmaxcol = 300 -- stop syntax highlight after x lines for performance

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.list = false -- do not display white characters
vim.opt.wrap = true --do not wrap lines even if very long
vim.opt.eol = false -- show if there's no eol char
-- vim.opt.showbreak= '↪' -- character to show when line is broken

vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 75

vim.opt.background = 'dark'
vim.opt.termguicolors = true

-- Sidebar
vim.o.number = true -- line number on the left
vim.o.relativenumber = true -- relative line number
vim.o.numberwidth = 3 -- always reserve 3 spaces for line number
vim.o.signcolumn = 'yes' -- keep 1 column for coc.vim  check
vim.o.modelines = 0
vim.o.showcmd = false -- display command in bottom bar

-- Backup files
vim.opt.backup = true -- use backup files
vim.opt.writebackup = false
vim.opt.swapfile = true -- use swap file
vim.opt.undofile = true -- use undo file
vim.opt.undodir = HOME .. '/.config/nvim/tmp/undo//'     -- undo files
vim.opt.backupdir = HOME .. '/.config/nvim/tmp/backup//' -- backups
vim.opt.directory = HOME .. '/.config/nvim/tmp/swap//'   -- swap files

-- Commands mode
vim.opt.wildmenu = true -- on TAB, complete options for system command
vim.opt.wildignore = 'deps,.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc'

-- Autorun
vim.cmd([[
  augroup update_user_config
    autocmd!
    autocmd BufWritePost ~/.local/share/chezmoi/* ! chezmoi apply --source-path "%"
    autocmd BufWritePost ~/.local/share/chezmoi/private_dot_config/nvim/lua/*.lua source ~/.config/nvim/plugin/init.lua
    autocmd BufWritePost plugins.lua PackerCompile
    autocmd BufWritePost plugins.lua PackerSync
    autocmd BufWritePost plugins.lua PackerInstall
  augroup END
]])
