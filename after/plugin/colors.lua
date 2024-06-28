
function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

    local groups = { -- table: default groups
        'Normal', 'NormalNC', "NormalFloat", "FloatTitle", "FloatBorder",
        "StatusLine", "StatusLineNC", "TelescopeBorder", "TelescopeNormal",
        "DiagnosticVirtualTextError", "DiagnosticVirtualTextWarn",
        "DiagnosticVirtualTextInfo", "DiagnosticVirtualTextHint"
    }

    for i, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "None" })
    end

    vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#eb6f92" })
    vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#f6c177" })
    vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#c4a7e7" })
    vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#9ccfd8" })
end

ColorMyPencils()
