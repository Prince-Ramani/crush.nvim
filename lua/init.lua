local M = {}

local function set(group, options)
    vim.api.nvim_set_hl(0, group, options)
end

local function apply_variant(style)
    local colors, highlights
    if style == "crush" then
        colors = require("colors.crush")
    elseif style == "blossom" then
        colors = require("colors.blossom")
    elseif style == "monkeys" then
        colors = require("colors.monkeys")
    elseif style == "glass" then
        colors = require("colors.glass")
    elseif style == "furin" then
        vim.opt.background = "light"
        colors = require("colors.furin")
    else
        colors = require("colors.crush")
    end

    highlights = require("highlights")
    vim.cmd("hi clear")
    highlights.apply_theme(set, colors)
end


M.set_variant = function(style)
    if style == "crush" or style == "blossom" or style == "furin" or style == "monkeys" or style == "glass" then
        apply_variant(style)
    else
        print("Invalid style! Valid options are 'crush', 'blossom', 'monkeys' or 'furin'")
    end
end

return M
