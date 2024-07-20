return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = "all",
            highlight = {
                enable = true,
                -- disable = { "markdown"}
            },
            indent = {
                enable = true,
                -- disable = {"markdown"},
            },
        })
    end,
}
