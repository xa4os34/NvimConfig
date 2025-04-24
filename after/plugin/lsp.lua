local lsp_zero = require("lsp-zero")

lsp_zero.preset("recommended")

lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp_zero.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E', warn = 'W', hint = 'H', info = 'I' }
})

local cmp = require('cmp')

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        -- Scroll up and down in the completion documentation
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
    })
})


require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'rust_analyzer',
        'csharp_ls',
        'lua_ls',
        'marksman',
        'clangd'
    },
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end
    }
})

vim.filetype.add({ filename = { ["CMakeLists.txt"] = 'cmake' } })
vim.filetype.add({ extension = { axaml = 'axaml' } })
vim.filetype.add({ extension = { cshtml = 'cshtml' } })

require("lspconfig.configs").axaml_ls = {
    default_config = {
        name = 'axaml-ls',
        cmd = { 'axaml-ls' },
        filetypes = { 'axaml' },
        root_dir = require('lspconfig.util').root_pattern('*.csproj'),
        single_file_support = false
    }
}

require("lspconfig.configs").scilab_lsp = {
    default_config = {
        name = 'scilab_lsp',
        cmd = { '/opt/scilab-lsp/start.sh' },
        filetypes = { 'scilab' },
        root_dir = require('lspconfig.util').root_pattern('*.sci'),
        single_file_support = true
    }
}

require('lspconfig').marksman.setup({})
require('lspconfig').scilab_lsp.setup({})
require('lspconfig').clangd.setup({
    cmd = {
        'clangd', '--query-driver=/usr/bin/arm-none-eabi-g*',
        '--fallback-style=webkit'
    }
})

lsp_zero.setup();
