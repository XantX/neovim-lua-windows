return {
    'nvimdev/lspsaga.nvim',
    opts = {
        ui = {
          theme = "round",
          border = "rounded",
          expand = "",
          collapse = "",
          code_action = "💡",
          incoming = " ",
          outgoing = " ",
          hover = ' ',
        },
        code_action = {
          extend_gitsigns = false,
        },
        lightbulb = {
          enable = true,
          enable_in_insert = false,
          sign = false,
          virtual_text = true,
        }
    },
    config = function()
        require('lspsaga').setup({})
        local keymap = vim.keymap.set
        -- Lsp finder find the symbol definition implement reference
        -- if there is no implement it will hide
        -- when you use action in finder like open vsplit then you can
        -- use <C-t> to jump back
        keymap("n", "<leader>gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })

        -- Code action
        keymap({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })

        -- Rename
        keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { silent = true })
        -- Peek Definition
        -- you can edit the definition file in this flaotwindow
        -- also support open/vsplit/etc operation check definition_action_keys
        -- support tagstack C-t jump back
        keymap("n", "<leader>pd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })

        -- Show line diagnostics
        keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

        -- Show cursor diagnostic
        --keymap("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

        -- Diagnsotic jump can use `<c-o>` to jump back
        keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
        keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })

        -- Only jump to error
        keymap("n", "[E", function()
          require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
        end, { silent = true })
        keymap("n", "]E", function()
          require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
        end, { silent = true })

        -- Toggle outline
        keymap("n","<leader>o", "<cmd>Lspsaga outline<CR>")

        -- Hover Doc
        keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
    end
}