local utils = require('utils')
-- ToggleTerm Key Mappings
utils.map('i', [[<C-\>]], '<cmd>exe v:count1 . "ToggleTerm size=80 direction=vertical"<CR>')
utils.map('n', [[<C-\>]], '<cmd>exe v:count1 . "ToggleTerm size=80 direction=vertical"<CR>')

-- bufferline
utils.map('n', [[gb]], ':BufferLinePick<CR>')

-- Nvim Tree Key Mappings
utils.map('i', [[<C-n>]], ':NvimTreeToggle<CR>')
utils.map('n', [[<C-n>]], ':NvimTreeToggle<CR>')


-- toggle term
function _G.set_terminal_keymaps()
    local opts = {noremap = true}
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')