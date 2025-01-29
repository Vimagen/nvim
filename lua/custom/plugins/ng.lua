return {
  'joeveiga/ng.nvim',
  opts = {}, -- Optional: keep empty if no specific options
  config = function()
    local opts = { noremap = true, silent = true }
    local ng = require 'ng'

    -- Key mappings
    vim.keymap.set('n', 'gat', ng.goto_template_for_component, opts)
    vim.keymap.set('n', 'gac', ng.goto_component_with_template_file, opts)
    vim.keymap.set('n', '<leader>aT', ng.get_template_tcb, opts)
  end,
}
