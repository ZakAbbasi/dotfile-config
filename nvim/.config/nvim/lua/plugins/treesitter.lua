return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        priority = 1000,
        branch = "master",
        build = ":TSUpdate",

        config = function ()
            require('nvim-treesitter.configs').setup {

                ensure_installed = {
                    "c", "lua", "vim", "vimdoc",
                    "query", "markdown", "markdown_inline"
                },

                -- Installs parsers not specified above
                auto_install = true,

                -- Enables indentation on treesiter
                indent = {
                    enable = false
                },

                -- Enables syntax highlighting
                highlight = {
                    enable = true
                },

                -- Keybinds for ease of navigation
                incremental_selection = {
                    enable = true,
                    -- set to `false` to disable one of the mappings
                    -- These keymaps are successive
                    -- ss -> si --> sc || --> sd
                    keymaps = {
                        init_selection = "<Leader>ss",
                        node_incremental = "<Leader>si",
                        scope_incremental = "<Leader>sc",
                        node_decremental = "<Leader>sd",
                    },
                },
            }
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        lazy = false,
        priority = 1000,
        config = function ()
            require('nvim-treesitter.configs').setup {
                textobjects = {
                  select = {
                        enable = true,

                        -- Automatically jump forward to textobj, similar to targets.vim
                        lookahead = true,

                        keymaps = {
                            -- You can use the capture groups defined in textobjects.scm
                            ["of"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["oc"] = "@class.outer",
                            -- You can optionally set descriptions to the mappings (used in the desc parameter of
                            -- nvim_buf_set_keymap) which plugins like which-key display
                            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                            -- You can also use captures from other query groups like `locals.scm`
                            ["ls"] = { query = "@local.scope", query_group = "locals", desc = "Select language scope" },
                        },
                        -- You can choose the select mode (default is charwise 'v')
                        selection_modes = {
                            ['@parameter.outer'] = 'v', -- charwise
                            ['@function.outer'] = 'v', -- linewise
                            ['@class.outer'] = '<c-v>', -- blockwise
                        }, 
                        include_surrounding_whitespace = true,
                    },
                },
            }
        end,
    }
}
