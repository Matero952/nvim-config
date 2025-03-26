
vim.opt.termguicolors = true
function SetColor(color)
    color = color or "jellybeans" -- have a default value
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none", ctermbg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", ctermbg = "none" })
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "none", ctermbg = "none"})
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none", ctermbg = "none" }) -- Sidebar
    vim.api.nvim_set_hl(0, "VertSplit", { bg = "none", ctermbg = "none" }) -- Split borders
    vim.api.nvim_set_hl(0, "StatusLine", { bg = "none", ctermbg = "none" }) -- Statusline
    vim.api.nvim_set_hl(0, "EndOfBuffer", {bg = "none", ctermbg = "none"})
end

SetColor() -- run at startup
