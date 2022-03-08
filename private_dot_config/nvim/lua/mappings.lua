local api = vim.api

-- Sane Remaps
function map(mode, shortcut, command)
  api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

-- Yank whole line
nmap('Y','y$')

-- Go to next spelling
nmap('<c-s>','[s1z=<c-o>')

-- Allow repeated commands in Visual mode
vmap('.',':norm.<CR>')

-- Buffer management
nmap('<leader>b',':buffer <C-z><S-Tab>')
nmap('<leader>B',':sbuffer <C-z><S-Tab>')
nmap('<PageUp>',':bprevious<CR>')
nmap('<PageDown>',':bnext<CR>')

-- Abbreviations
vim.cmd 'abbrev idate <c-r>=strftime("%a, %b %d %Y")<cr>'
vim.cmd 'abbrev idtime <c-r>=strftime("%I:%M %p")<cr>'

-- PLUGINS

-- VimWiki
vim.cmd 'abbrev wdate ## <c-r>=strftime("%a, %b %d %Y")<cr><cr><tab>-'
nmap('<leader>w<leader>t',':VimwikiMakeDiaryNote<CR>zM:$<CR>o<ESC>0C#<Space><c-r>=strftime("%I:%M %p")<cr><cr><cr><up><tab>-<Space>')
nmap("<leader>w<leader>d",":let@a=''<CR>:g/-<Space>\\[<Space>\\]/yank<Space>A<CR>:%s/<Space>\\[<Space>\\]//g<CR>:e<Space>/Volumes/GoogleDrive/My Drive/Notes/Wiki/List.md<CR>Gp")

