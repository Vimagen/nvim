return {
  'luckasRanarison/tailwind-tools.nvim',
  name = 'tailwind-tools',
  build = ':UpdateRemotePlugins',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-telescope/telescope.nvim' },
  custom_filetypes = { 'angular', 'angular.html' },
  opts = {
    extension = {
      queries = { 'angular.html', 'angular' },
    },
    custom_filetypes = { 'angular', 'angular.html' },
  }, -- your configuration
}
