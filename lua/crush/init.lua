local M = {}


local function set(group, options)
    vim.api.nvim_set_hl(0, group, options)
end


local function apply_variant(style)
    local colors, highlights
    if style == "crush" then
        colors = require("crush.colors.crush")
    elseif style == "blossom" then
        colors = require("crush.colors.blossom")
    else
        colors = require("crush.colors.crush")
    end
    highlights = require("crush.highlights")
    vim.cmd("hi clear")
    highlights.apply_theme(set, colors)
end

M.setup = function(config)
    local config  = config or {}
    local variant = config.style or vim.g.crush_variant
    apply_variant(variant)
end

M.set_variant = function(style)
    if style == "crush" or style == "blossom" then
        apply_variant(style)
    else
        print("Invalid style! Valid options are 'crush', or 'blossom'")
    end
end

return M
