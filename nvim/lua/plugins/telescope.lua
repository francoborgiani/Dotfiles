return {
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
}
