require('core.aliases_map')

vim.opt.termguicolors = true

function SetColor(color)
    color = color or "onedark"
    vim.cmd.colorscheme(color)
    vim.o.background = "dark"
   --vim.o.background = "light"

    -- vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    -- vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
    -- vim.api.nvim_set_hl(0, "ColorColumn", {bg = "none"})
    -- vim.api.nvim_set_hl(0, "LineNr", {bg = "none"})
end

--SetColor('kanagawa-wave')
SetColor('gruvbox')
--SetColor('habamax')



