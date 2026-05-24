return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "catppuccin"

        vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
        vim.api.nvim_set_hl(0, "NormalNC", {bg = "none"})
        vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
        vim.api.nvim_set_hl(0, "EndOfBuffer", {bg = "none"})
        vim.api.nvim_set_hl(0, "NeoTreeNormal", {bg = "none"})
        vim.api.nvim_set_hl(0, "NeoTreeNormalNC", {bg = "none"})
        vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", {bg = "none"})
        vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", {bg = "none"})

    end
}
