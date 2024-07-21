return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    -- event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
        local config = require("nvim-treesitter.configs")
        ---@diagnostic disable-next-line: missing-fields
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
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })
    end,
}
