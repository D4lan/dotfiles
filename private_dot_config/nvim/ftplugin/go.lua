vim.cmd([[
  augroup Format
    autocmd!
    autocmd BufWrite *.go lua vim.lsp.buf.formatting()
  augroup END
]])

