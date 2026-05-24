return {
    {
        'nvim-telescope/telescope.nvim', version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        config = function()
            local telescope_funcs = require("telescope.builtin")
            vim.keymap.set('n', '<leader><leader>', telescope_funcs.find_files, {})
            vim.keymap.set('n', '<leader>/', telescope_funcs.live_grep, {})
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            }

            require("telescope").load_extension("ui-select")
        end
    }
}

