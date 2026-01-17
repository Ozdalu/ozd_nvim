local languages = {
  'javascript',
  'typescript',
  'html',
  'php',
  'c',
  'css',
  'lua',
  'vim',
  'vimdoc',
  'query',
  'go'
}

require('nvim-treesitter').install(languages)

vim.api.nvim_create_autocmd('FileType', {
  pattern = languages,
  callback = function() vim.treesitter.start() end,
})

vim.api.nvim_create_user_command('TSPlayground', ':InspectTree', {})
