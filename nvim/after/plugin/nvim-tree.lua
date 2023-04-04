-- keymaps
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>r", ":NvimTreeRefresh<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeFindFile<CR>", {noremap = true, silent = true})

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
        mappings = {
            list = {{
                key = "u",
                action = "dir_up"
            }}
        }
    },
    renderer = {
        group_empty = true
    },
    filters = {
        dotfiles = true
    }
})

