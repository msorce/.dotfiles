require('default-config')
vim.cmd('luafile ' .. CONFIG_PATH .. '/my-config.lua')
require("plugins")
require("settings")
require("keymappings")
require("compe-settings")
require("lua-ls")
require("galaxyline-settings")
require("whichkey-settings")
