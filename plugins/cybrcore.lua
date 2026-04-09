-- # ---------------------------------------
-- # cybr-nvim   lucid theme plugin for neovim (part of cybrcore)
-- # Project:    https://github.com/cybrcore/cybr-nvim
-- # Author:     scherrer-txt   |   License:     GPL-3.0
-- # Source:     ~/.config/nvim/lua/plugins/cybrcore.lua
-- # ---------------------------------------

return {
  name = "cybrcore",
  dir = vim.fn.stdpath("config") .. "/lua/cybrcore",
  lazy = false,
  priority = 1000,
  config = function()
    require("cybrcore").setup({})
    require("cybrcore").load()
  end,
}
