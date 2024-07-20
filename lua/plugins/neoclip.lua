return {
    "AckslD/nvim-neoclip.lua",
    dependencies = {
        -- you'll need at least one of these
        { "nvim-telescope/telescope.nvim" },
        -- {'ibhagwan/fzf-lua'},
    },
    config = function()
        require("neoclip").setup({
            keys = {
                telescope = {
                    i = {
                        select = "<cr>",
                        paste = "<c-p>",
                        paste_behind = "<c-b>",
                        replay = "<c-q>", -- replay a macro
                        delete = "<c-d>", -- delete an entry
                        edit = "<c-e>", -- edit an entry
                        custom = {},
                    },
                    n = {
                        select = "<cr>",
                        paste = "p",
                        --- It is possible to map to more than one key.
                        -- paste = { 'p', '<c-p>' },
                        paste_behind = "P",
                        replay = "q",
                        delete = "d",
                        edit = "e",
                        custom = {},
                    },
                },
            },
        })
    end,
}

