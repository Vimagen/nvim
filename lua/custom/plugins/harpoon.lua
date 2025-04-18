return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  config = function()
    local harpoon = require 'harpoon'
    ---@diagnostic disable-next-line: missing-parameter
    harpoon:setup {
      settings = {
        key = function()
          local pipe = io.popen 'git branch --show-current'
          if pipe then
            local c = pipe:read('*l'):match '^%s*(.-)%s*$'
            pipe:close()
            return c
          end
          return nil
        end,
      },
    }
    local function map(lhs, rhs, opts)
      vim.keymap.set('n', lhs, rhs, opts or {})
    end
    map('<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Append Current File' })
    map('<leader>e', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle Harpoon Quick Menu' })
    map('<C-j>', function()
      harpoon:list():select(1)
    end, { desc = 'Select First Item in Harpoon List' })
    map('<C-k>', function()
      harpoon:list():select(2)
    end, { desc = 'Select Second Item in Harpoon List' })
    map('<C-l>', function()
      harpoon:list():select(3)
    end, { desc = 'Select Third Item in Harpoon List' })
    map('<C-;>', function()
      harpoon:list():select(4)
    end, { desc = 'Select Fourth Item in Harpoon List' })
    map('<leader>jp', function()
      harpoon:list():prev()
    end, { desc = 'Move to Previous Item in Harpoon List' })
    map('<leader>jn', function()
      harpoon:list():next()
    end, { desc = 'Move to Next Item in Harpoon List' })
  end,
}
