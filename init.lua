vim.g.mapleader = ' '
local fn = vim.fn
local execute = vim.api.nvim_command

-- Sensible defaults
-- require('settings')
vim.cmd [[packadd packer.nvim]]
-- This command will run PackerCompile when the
-- plugins.lua file is saved.
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

require('settings')

-- Install plugins
require('plugins')

-- Configure plugins
require('pluginconfigs')

-- Colorscheme
require('colorscheme')

-- Key mappings
require('keymappings')

