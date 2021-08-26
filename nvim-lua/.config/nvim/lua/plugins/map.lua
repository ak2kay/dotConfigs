-- Plugins Mappings
local utils = require("personal.utils")

-- Personal
utils.map("n", "<leader>cc", "<cmd>lua require('personal.nvim_func').compile_run_cpp('sp', '20')<CR>")

-- Programming related map related with lsp or telescope
-- lsp
utils.map("n", "g[", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")
utils.map("n", "g]", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
utils.map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
utils.map("n", "gf", "<cmd>lua vim.lsp.buf.formatting()<CR>")
-- Telescope
utils.map("n", "<C-p>", "<cmd>lua require'telescope.builtin'.find_files({hidden=true})<CR>")

-- Telescope
utils.map("n", "<leader>t", "<cmd>Telescope tags<CR>")
utils.map("n", "<leader>b", "<cmd>Telescope buffers<CR>")
utils.map("n", "<leader>ht", "<cmd>Telescope help_tags<CR>")
utils.map("n", "<leader>ch", "<cmd>Telescope command_history<CR>")
utils.map("n", "<leader>c", "<cmd>Telescope commands<CR>")
utils.map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>")
utils.map("n", "<leader>gt", "<cmd>Telescope git_status<CR>")
utils.map("n", "<leader>gb", "<cmd>Telescope git_branches<CR>")
utils.map("n", "<leader>rl", "<cmd>Telescope reloader<CR>")
utils.map("n", "<Leader>gw", "<cmd>Telescope live_grep<CR>")
utils.map("n", "<Leader>fw", "<cmd>Telescope grep_string<CR>")
utils.map("n", "<Leader>re", "<cmd>Telescope registers<CR>")
utils.map("n", "<Leader>wk", "<cmd>Telescope keymaps<CR>")

-- Nvim-tree
utils.map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- fugitive
utils.map("n", "<leader>gs", "<cmd>G<CR>")
utils.map("n", "<leader>gj", "<cmd>diffget //3<CR>")
utils.map("n", "<leader>gf", "<cmd>diffget //2<CR>")

-- floatTerm
utils.map("n", "<leader>nt", ":FloatermNew --width=0.9<CR>")

-- maximizer
utils.map("n", "<leader>z", ":MaximizerToggle!<CR>")

-- Nvim-compe
vim.g["lexima_no_default_rules"] = 1
vim.call("lexima#set_default_rules")
utils.map("i", "<c-space>", "compe#complete()", { expr = true })
utils.map("i", "<CR>", "compe#confirm(lexima#expand('<LT>CR>', 'i'))", { expr = true })
utils.map("i", "<c-e>", "compe#close('<c-e>')", { expr = true })
utils.map("i", "<c-f>", "compe#scroll({ 'delta': +4 })", { expr = true })
utils.map("i", "<c-d>", "compe#scroll({ 'delta': -4 })", { expr = true })

-- CtrlSF
utils.map("n", "<leader>rw", ":CtrlSF <C-R><C-W><CR>")

-- Vista
utils.map("n", "<C-l>", ":Vista!!<CR>")
