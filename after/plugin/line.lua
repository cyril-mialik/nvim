require('lualine').setup {
    options = {
        theme = 'dracula-nvim',
        component_separators = '',
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = { { 'mode', separator = { left = '', right = ' ' }, right_padding = 2 } },
        lualine_b = { { 'filename', separator = { left = '' } } },
        lualine_c = {
            { 'branch', icon = '| ' },
            {
                'diff',
                colored = true,
                diff_color = {
                    added    = { fg = '#28A745' },
                    modified = { fg = '#DBAB09' },
                    removed  = { fg = '#D73A49' }
                },
                symbols = {
                    added    = ' ',
                    modified = ' ',
                    removed  = ' '
                }
            }
        },
        lualine_x = {
            {
                "diagnostics",
                sources = { "nvim_lsp" },
                sections = { "error", "warn", "info", "hint" },
                diagnostics_color = {
                    error = { fg = '#D73A49' },
                    warn  = { fg = '#DBAB09' },
                    info  = { fg = '#0087AF' },
                    hint  = { fg = '#28A745' }
                },
                symbols = {
                    error = '| error ',
                    warn = '| warn ',
                    info = '| info ',
                    hint = '| hint ',
                }
            }
        },
        lualine_y = { 'filetype', 'progress' },
        lualine_z = { { 'location', separator = { right = '', left = ' ' }, left_padding = 2 } },
    },
    inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = { 'branch', 'diff', 'diagnostics' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
    },
    tabline = {},
    extensions = {},
}
