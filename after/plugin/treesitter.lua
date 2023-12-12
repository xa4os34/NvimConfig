require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "pascal", "typescript", "c_sharp", "c", "lua", "vim", "vimdoc", "query" },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
