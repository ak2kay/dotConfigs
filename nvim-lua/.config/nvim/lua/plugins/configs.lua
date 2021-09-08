-- Configs for Plugins
--
local g = vim.g

-- Vista
g["vista_default_executive"] = "nvim_lsp"

-- Toggleterm
require("toggleterm").setup({
    size = 20,
    open_mapping = [[<c-\>]],
    shade_filetypes = {},
    shade_terminals = true,
    persist_size = true,
    direction = "horizontal",
})

-- Vim-wiki
g["vimwiki_list"] = { { path = "~/vimwiki/", syntax = "markdown", ext = ".md" } }

-- BufferLine
require("bufferline").setup({
    options = {
        numbers = "buffer_id",
        diagnostic = "nvim_lsp",
        diagnostics_indicator = function(count, level)
            local icon = level:match("error") and " " or ""
            return " " .. icon .. count
        end,
        show_buffer_close_icons = false,
    },
})

-- CtrlSF
g["ctrlsf_auto_focus"] = { at = "start" }
g["ctrlsf_position"] = "right"

-- Nvim-tree
g["nvim_tree_ignore"] = { ".git", "node_modules", ".cache" }
g["nvim_tree_auto_close"] = 0
g["nvim_tree_follow"] = 1

-- Diffview
local cb = require("diffview.config").diffview_callback

require("diffview").setup({
    diff_binaries = false, -- Show diffs for binaries
    file_panel = {
        width = 35,
    },
    key_bindings = {
        -- The `view` bindings are active in the diff buffers, only when the current
        -- tabpage is a Diffview.
        view = {
            ["<tab>"] = cb("select_next_entry"), -- Open the diff for the next file
            ["<s-tab>"] = cb("select_prev_entry"), -- Open the diff for the previous file
            ["<leader>e"] = cb("focus_files"), -- Bring focus to the files panel
            ["<leader>b"] = cb("toggle_files"), -- Toggle the files panel.
        },
        file_panel = {
            ["j"] = cb("next_entry"), -- Bring the cursor to the next file entry
            ["<down>"] = cb("next_entry"),
            ["k"] = cb("prev_entry"), -- Bring the cursor to the previous file entry.
            ["<up>"] = cb("prev_entry"),
            ["<cr>"] = cb("select_entry"), -- Open the diff for the selected entry.
            ["o"] = cb("select_entry"),
            ["R"] = cb("refresh_files"), -- Update stats and entries in the file list.
            ["<tab>"] = cb("select_next_entry"),
            ["<s-tab>"] = cb("select_prev_entry"),
            ["<leader>e"] = cb("focus_files"),
            ["<leader>b"] = cb("toggle_files"),
        },
    },
})

-- LSP status
require("lsp-status").config({
    diagnostics = false,
    indicator_errors = "E",
    indicator_warnings = "W",
    indicator_info = "i",
    indicator_hint = "?",
    indicator_ok = "Ok",
    status_symbol = "",
})
