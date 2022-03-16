vim.opt.spell = true
vim.opt.spelllang = 'en_us'

vim.opt.linebreak = true
vim.opt.wrap = true
vim.opt.formatoptions:remove("t")  -- -=
vim.opt.wrapmargin = 0

-- Sane Remaps
local api = vim.api
function Map(mode, shortcut, command)
  api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function Nmap(shortcut, command)
  Map('n', shortcut, command)
end

function Imap(shortcut, command)
  Map('i', shortcut, command)
end

function Vmap(shortcut, command)
  Map('v', shortcut, command)
end

function Cmap(shortcut, command)
  Map('c', shortcut, command)
end

function Tmap(shortcut, command)
  Map('t', shortcut, command)
end

Nmap('j','gj')
Nmap('k','gk')
Nmap('0','g0')
Nmap('^','g^')
Nmap('$','g$')
Nmap('j','gj')
Nmap('k','gk')
Nmap('0','g0')
Nmap('^','g^')
Nmap('$','g$')

-- Other settings
vim.g.markdown_folding = 1
vim.g.markdown_syntax_conceal = 1
vim.opt.foldenable = true -- enable folding
vim.opt.foldlevel = 4 -- limit folding to 4 levels
vim.opt.foldlevelstart = 0 --start the fold level at 1
vim.opt.foldmethod = 'syntax' -- use language syntax to generate folds
