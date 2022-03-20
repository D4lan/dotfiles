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

-- Mappings
Nmap("<leader>go",":w<CR> :! go run %<CR>")

vim.cmd([[
  augroup FormatGo
    autocmd!
    autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()
  augroup END
]])

