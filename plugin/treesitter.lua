require('nvim-treesitter').install(
  {
    'javascript',
    'typescript',
    'html',
    'php',
    'c',
    'lua',
    'vim',
    'vimdoc',
    'query',
    'go'
  }
)

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'go' },
  callback = function() vim.treesitter.start() end,
})

vim.api.nvim_create_user_command('TSPlayground', ':InspectTree', {})
