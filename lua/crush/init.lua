local M = {}

local function set(group, options)
    vim.api.nvim_set_hl(0, group, options)
end

local function apply_theme()
    local colors = require("crush.colors")
    local highlights = require("crush.highlights")
    vim.cmd("hi clear")

    highlights.apply_theme(set, colors)
end

M.setup = function()
    apply_theme()
end

return M
