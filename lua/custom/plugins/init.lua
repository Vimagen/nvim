-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.api.nvim_set_keymap('n', '<leader>z', '<cmd>lua require("zen-mode").toggle({})<CR>', { desc = 'Toggle Zenmode', noremap = true, silent = true })
vim.opt.number = true
vim.opt.relativenumber = true

return {
  'rebelot/kanagawa.nvim',
  'tpope/vim-fugitive',
{
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
},

-- Lazy
{
  "olimorris/onedarkpro.nvim",
  priority = 1000, -- Ensure it loads first
},
  'folke/zen-mode.nvim',
  'catppuccin/nvim',
  'rose-pine/neovim',
  'comfysage/evergarden',
}

