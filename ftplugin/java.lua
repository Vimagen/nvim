local home = vim.env.HOME -- Get the home directory

local config = {
  -- cmd = { 'C:/Program Files/Eclipse Adoptium/jdk-21.0.5.11-hotspot/' },
  cmd = { 'C:/Users/daniel.dowdle/AppData/Local/nvim-data/mason/packages/jdtls/' },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
