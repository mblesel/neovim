return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    config = function()
        ---@diagnostic disable-next-line: missing-fields
        require("nvim-treesitter.configs").setup({
            textobjects = {
                select = {
                    enable = true,
                    -- Automatically jump forward to textobj, similar to targets.vim
                    lookahead = true,

                    keymaps = {
                        -- You can use the capture groups defined in textobjects.scm
                        ["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
                        ["i="] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
                        ["l="] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },
                        ["r="] = { query = "@assignment.rhs", desc = "Select right hand side of an assignment" },

                        ["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
                        ["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },

                        ["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
                        ["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },

                        ["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
                        ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },

                        ["ac"] = { query = "@call.outer", desc = "Select outer part of a function call" },
                        ["ic"] = { query = "@call.inner", desc = "Select inner part of a function call" },

                        ["af"] = {
                            query = "@function.outer",
                            desc = "Select outer part of a method/function definition",
                        },
                        ["if"] = {
                            query = "@function.inner",
                            desc = "Select inner part of a method/function definition",
                        },

                        ["ao"] = { query = "@class.outer", desc = "Select outer part of a class" },
                        ["io"] = { query = "@class.inner", desc = "Select inner part of a class" },
                    },
                },
                move = {
                    enable = true,
                    set_jumps = true, -- whether to set jumps in the jumplist
                    goto_next_start = {
                        ["+c"] = { query = "@call.outer", desc = "Next function call start" },
                        ["+f"] = { query = "@function.outer", desc = "Next method/function def start" },
                        ["+o"] = { query = "@class.outer", desc = "Next class start" },
                        ["+i"] = { query = "@conditional.outer", desc = "Next conditional start" },
                        ["+l"] = { query = "@loop.outer", desc = "Next loop start" },

                        ["+s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
                        ["+a"] = { query = "@paramter.inner", desc = "Next parameter start" },
                    },
                    goto_next_end = {
                        ["+C"] = { query = "@call.outer", desc = "Next function call end" },
                        ["+F"] = { query = "@function.outer", desc = "Next method/function def end" },
                        ["+O"] = { query = "@class.outer", desc = "Next class end" },
                        ["+I"] = { query = "@conditional.outer", desc = "Next conditional end" },
                        ["+L"] = { query = "@loop.outer", desc = "Next loop end" },
                        ["+A"] = { query = "@paramter.inner", desc = "Next parameter start" },
                    },
                    goto_previous_start = {
                        ["üc"] = { query = "@call.outer", desc = "Prev function call start" },
                        ["üf"] = { query = "@function.outer", desc = "Prev method/function def start" },
                        ["üo"] = { query = "@class.outer", desc = "Prev class start" },
                        ["üi"] = { query = "@conditional.outer", desc = "Prev conditional start" },
                        ["ül"] = { query = "@loop.outer", desc = "Prev loop start" },
                        ["üa"] = { query = "@paramter.inner", desc = "Next parameter start" },
                    },
                    goto_previous_end = {
                        ["üC"] = { query = "@call.outer", desc = "Prev function call end" },
                        ["üF"] = { query = "@function.outer", desc = "Prev method/function def end" },
                        ["üO"] = { query = "@class.outer", desc = "Prev class end" },
                        ["üI"] = { query = "@conditional.outer", desc = "Prev conditional end" },
                        ["üL"] = { query = "@loop.outer", desc = "Prev loop end" },
                        ["üA"] = { query = "@paramter.inner", desc = "Next parameter start" },
                    },
                },
            },
        })
    end,
}
