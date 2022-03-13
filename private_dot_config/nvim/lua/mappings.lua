local api = vim.api

-- Sane Remaps
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

-- General
Nmap('Y','y$') -- Yank whole line
Vmap('.',':norm.<CR>') -- Allow repeated commands in Visual mode

-- Spelling
Nmap('<leader>s',':set spell!<CR>')
Nmap('<c-s>','[s1z=<c-o>')

-- Buffer management
Nmap('<leader>b',':buffer <C-z><S-Tab>')
Nmap('<leader>B',':sbuffer <C-z><S-Tab>')
Nmap('<PageUp>',':bprevious<CR>')
Nmap('<PageDown>',':bnext<CR>')

-- Abbreviations
vim.cmd 'abbrev idate <c-r>=strftime("%a, %b %d %Y")<cr>'
vim.cmd 'abbrev idtime <c-r>=strftime("%I:%M %p")<cr>'

-- PLUGINS

-- VimWiki
vim.cmd 'abbrev wdate ## <c-r>=strftime("%a, %b %d %Y")<cr><cr><tab>-'
Nmap('<leader>w<leader>t',':VimwikiMakeDiaryNote<CR>zM:$<CR>o<ESC>0C#<Space><c-r>=strftime("%I:%M %p")<cr><cr><cr><up><tab>-<Space>')
Nmap("<leader>w<leader>d",":let@a=''<CR>:g/-<Space>\\[<Space>\\]/yank<Space>A<CR>:%s/<Space>\\[<Space>\\]//g<CR>:e<Space>/Volumes/GoogleDrive/My Drive/Notes/Wiki/List.md<CR>Gp")

