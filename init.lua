-- Setting up leader key
vim.g.mapleader = ' '

-- Initialize Lazy Plugin Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
-- Setting up lazy, and telling it where `plugins` table is.
-- We manage the `plugins` in another file
vim.opt.rtp:prepend(lazypath)
require('lazy').setup("plugins_lazy")
-- Apply general vim settings
require('settings')
-- Configure plugins
require('pluginconfigs')
-- Colorscheme
require('colorscheme')
-- Key mappings
require('keymappings')

function printHelloTenTimes()
    for i=1, 10 do
        print("hello")
    end
end

printHelloTenTimes();
