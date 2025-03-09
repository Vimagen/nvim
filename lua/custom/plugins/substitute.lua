return {
  'gbprod/substitute.nvim',
  opts = {
    on_substitute = nil,
    yank_substituted_text = false,
    preserve_cursor_position = false,
    modifiers = nil,
    highlight_substituted_text = {
      enabled = true,
      timer = 500,
    },
    range = {
      prefix = 's',
      prompt_current_text = false,
      confirm = false,
      complete_word = false,
      subject = nil,
      range = nil,
      suffix = '',
      auto_apply = false,
      cursor_position = 'end',
    },
    exchange = {
      motion = false,
      use_esc_to_cancel = true,
      preserve_cursor_position = false,
    },
  },

  config = function(_, opts)
    -- Lua
    require('substitute').setup(opts)
    vim.keymap.set('n', '<c-s>', require('substitute').operator, { noremap = true })
    vim.keymap.set('n', '<c-s><c-s>', require('substitute').line, { noremap = true })
    -- vim.keymap.set('n', 'X', require('substitute').eol, { noremap = true })
    -- vim.keymap.set('x', 'x', require('substitute').visual, { noremap = true })
  end,
}
