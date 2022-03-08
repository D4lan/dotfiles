HOME = os.getenv("HOME")

vim.g.mapleader = ','

-- basic settings
vim.opt.encoding = "utf-8"
vim.opt.backspace = "indent,eol,start"
vim.opt.completeopt = 'menuone,noselect'
vim.opt.history = 1000
vim.opt.startofline = true

-- Mapping waiting time
vim.opt.timeout = false
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 100

-- Display
vim.opt.showmatch  = true -- show matching brackets
vim.opt.scrolloff = 3 -- always show 3 rows from edge of the screen
vim.opt.synmaxcol = 300 -- stop syntax highlight after x lines for performance

vim.opt.list = false -- do not display white characters
vim.opt.foldenable = true
vim.opt.foldlevel = 4 -- limit folding to 4 levels
vim.opt.foldmethod = 'syntax' -- use language syntax to generate folds
vim.opt.wrap = false --do not wrap lines even if very long
vim.opt.eol = false -- show if there's no eol char
vim.opt.showbreak= '↪' -- character to show when line is broken

vim.g.markdown_syntax_conceal = 1

vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 75

vim.opt.background = 'dark'

-- Backup files
--vim.opt.backup = true -- use backup files
--vim.opt.writebackup = false
vim.opt.swapfile = true -- use swap file
vim.opt.undodir = HOME .. '/.config/nvim/tmp/undo//'     -- undo files
vim.opt.backupdir = HOME .. '/.config/nvim/tmp/backup//' -- backups
vim.opt.directory = '/.config/nvim/tmp/swap//'   -- swap files

-- Commands mode
vim.opt.wildmenu = true -- on TAB, complete options for system command
vim.opt.wildignore = 'deps,.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc'
