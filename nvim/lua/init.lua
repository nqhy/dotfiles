-- load all plugins
require "pluginList"
require "options"
require "plugins.bufferline"

local g = vim.g

g.auto_save = true
-- colorscheme related stuff

g.nvchad_theme = "onedark"
local base16 = require "base16"
base16(base16.themes["onedark"], true)

require "highlights"
require "mappings"

require("utils").hideStuff()
