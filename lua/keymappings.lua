local utils = require('utils')
local wk = require("which-key")
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

-- ufo code folding
vim.keymap.set('n', 'zN', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

-- telescope keymappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- harpoon
-- vim.keymap.set('n', '<leader>hx', require('harpoon.mark').add_file)
vim.keymap.set('n', '<leader>hn', require('harpoon.ui').nav_next)
vim.keymap.set('n', '<leader>hp', require('harpoon.ui').nav_prev)
utils.map('n', [[<leader>hm]], ':Telescope harpoon marks<CR>')

-- Harpoon Which-key mappings
wk.register({
    -- The first key you are pressing
    h = {
        name  = "harpoon",
        -- the second key
        x = { function()
            require('harpoon.mark').add_file()
        end, "Mark file" }
    },
}, { prefix = "<leader>" })

-- bufferline
utils.map(
    'n',
    [[<leader>bl]],
    ':BufferLinePick<CR>'
)

-- flash
wk.register({
    -- flash search
    l = {
        name = "flash",
        s = { function() require("flash").jump() end, "Flash Jump" },
        t = { function() require("flash").treesitter() end, "Flash Treesitter" },
        r = { function() require("flash").treesitter_search() end, "Flash Treesitter Search" },
    },
}, { prefix = "<leader>" })

-- gp (Chat GPT)
wk.register({
  u = {
    name = "Chat GPT",
    g = { "<cmd>GpChatToggle popup<cr>", "Toggle Chat" },
    r = { "<cmd>GpChatRespond<cr>", "Respond" },
    n = { "<cmd>GpChatNew popup<cr>", "New Chat" },
  }
}, { mode="n", prefix="<leader>" })

wk.register({
  u = {
    name = "Chat GPT Visual",
    g = { ":<C-u>'<,'>GpChatToggle popup<cr>", "Visual Popup Chat" },
    n = { ":<C-u>'<,'>GpChatNew popup<cr>", "Visual New Chat" },
  },
}, { mode="v", prefix="<leader>" })

-- spectre
vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
vim.keymap.set('n', '<leader>sf', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})


