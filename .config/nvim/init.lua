require('default-config')
vim.cmd('luafile ' .. CONFIG_PATH .. '/my-config.lua')
require("plugins")
require("settings")
require("keymappings")
require("compe-settings")
require("lua-ls")
require("galaxyline-settings")
require("whichkey-settings")
require("telescope-settings")
require("spectre-settings")
require("fterm-settings")
require("barbar-settings")
require("autopairs-settings")
--require("lsp-settings")
require'lspinstall'.setup()
local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end
