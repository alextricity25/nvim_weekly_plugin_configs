require("toggleterm").setup {
    close_on_exit = false,
    autochdir = true,
    shell = vim.o.shell,
    size = 20}

require('nvim-tree').setup({
    filters = {
        dotfiles = false,
        git_ignored = false,
    },
    auto_reload_on_write = true,
      view = {
        centralize_selection = false,
        cursorline = true,
        debounce_delay = 15,
        width = {},
        hide_root_folder = false,
        side = "left",
        preserve_window_proportions = false,
        number = true,
        relativenumber = true,
        signcolumn = "yes",
    },
    update_focused_file = {
        enable = true,
        update_root = false,
        ignore_list = {},
    },
    renderer = {
        add_trailing = false,
        group_empty = false,
        highlight_git = false,
        full_name = false,
        highlight_opened_files = "all",
        highlight_modified = "none",
        root_folder_label = ":~:s?$?/..?",
        indent_width = 2,
        indent_markers = {
          enable = true,
          inline_arrows = true,
          icons = {
              corner = "└",
              edge = "│",
              item = "│",
              bottom = "─",
              none = " ",
          },
        },
    }
})

require('diffview').setup()
require('coc')

require('ufo').setup()


require("indent_blankline").setup {
    show_current_context = true, 
    show_current_context_start = true, 
    show_end_of_line = true,
}

require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = {"lua", "bash", "fish"},

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = false,
}

 -- treesj
require('treesj').setup({
    -- Use default keymaps
    -- (<space>m - toggle, <space>j - join, <space>s - split)
    use_default_keymaps = false,

    -- Node with syntax error will not be formatted
    check_syntax_error = false,

    -- If line after join will be longer than max value,
    -- node will not be formatted
    max_join_length = 120,

    -- hold|start|end:
    -- hold - cursor follows the node/place on which it was called
    -- start - cursor jumps to the first symbol of the node being formatted
    -- end - cursor jumps to the last symbol of the node being formatted
    cursor_behavior = 'hold',

    -- Notify about possible problems or not
    notify = true,
    langs = {
      lua = require('treesj.langs.lua'),
      typescript = require('treesj.langs.typescript'),
    },

    -- Use `dot` for repeat action
    dot_repeat = true,
})

require('Comment').setup()

require('telescope').setup({
    pickers = {
        find_files = {
            theme = "dropdown",
        },
        live_grep = {
            theme = "dropdown",
        },
        help_tags = {
            theme = "dropdown",
        }
    }
})

-- lualine
local colors = {
    blue   = '#80a0ff',
    cyan   = '#79dac8',
    black  = '#080808',
    white  = '#c6c6c6',
    red    = '#ff5189',
    violet = '#d183e8',
    grey   = '#303030',
}
local bubbles_theme = {
    normal = {
        a = { fg = colors.black, bg = colors.violet },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.black, bg = colors.black },
    },

    insert = { a = { fg = colors.black, bg = colors.blue } },
    visual = { a = { fg = colors.black, bg = colors.cyan } },
    replace = { a = { fg = colors.black, bg = colors.red } },

    inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.black, bg = colors.black },
    },
}
require('lualine').setup({
    options = {
        theme = bubbles_theme,
        component_separators = '|',
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = {
            { 'mode', separator = { left = '' }, right_padding = 2 },
        },
        lualine_b = { 'filename', 'branch' },
        lualine_c = { 'fileformat' },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
            { 'location', separator = { right = '' }, left_padding = 2 },
        },
    },
    inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
    },
    tabline = {},
    extensions = {},
})

