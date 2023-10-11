local ls = require('luasnip')
vim.keymap.set('n', '<C-s>', function()
    vim.api.nvim_command('write')
end)
vim.keymap.set('n', '<C-t>', function()
    vim.api.nvim_command('RunFileTestPHP')
end)
vim.keymap.set('n', '<leader>rl', function()
    vim.api.nvim_command('source %')
end)
vim.keymap.set('n', '<F3>', function()
    require('telescope.builtin').lsp_document_symbols()
end)
vim.keymap.set('n', '<leader>e', function()
    vim.api.nvim_command('Lexplore')
end)

vim.api.nvim_set_keymap('n', '<leader><leader>l', '<cmd>lua require("cfuentes.luasnip").setup()<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader><leader>s', '<cmd>so %<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader><leader>z', '<cmd>ZenMode<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader><leader>c', '<cmd>CloakToggle<cr>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle)

vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', {noremap = true, silent = true})

--[[

vim.keymap.set({ "i", "s" }, '<tab>', function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

-- jump to the last item inside snippet
vim.keymap.set({ "i", "s" }, '<s-tab>', function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

--]]
