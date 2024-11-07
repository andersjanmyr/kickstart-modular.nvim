vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*.txt', '*.md', '*.tex' },
  command = 'setlocal spell',
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'go', 'lua' },
  command = 'setlocal nolist noexpandtab',
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'css', 'html', 'javascript', 'json', 'sh', 'typescript' },
  command = 'setlocal expandtab ts=2 sts=2 sw=2',
})

vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = { '*.js', '*.json', '*.ts' },
  command = 'Neoformat',
})

vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = { '*.tf' },
  command = 'TerraformFmt',
})
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*.txt', '*.md', '*.tex' },
  command = 'setlocal spell',
})

vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = { '*.js', '*.json', '*.ts' },
  command = 'Neoformat',
})

vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = { '*.tf' },
  command = 'TerraformFmt',
})
