local M = {}

M.apply_theme = function(set, c)
    vim.cmd("hi clear")

    set("Normal", { fg = c.fg, bg = c.bg })
    set("NormalNC", { fg = c.fg, bg = c.bg })
    set("Comment", { fg = c.comment, italic = true })
    set("Constant", { fg = c.constant })
    set("String", { fg = c.string })
    set("Character", { fg = c.string })
    set("Number", { fg = c.number })
    set("Boolean", { fg = c.constant })
    set("Float", { fg = c.number })

    set("Identifier", { fg = c.fg })
    set("Function", { fg = c.func, bold = c.boldFunction or false })

    set("Statement", { fg = c.keyword })
    set("Conditional", { fg = c.keyword })
    set("Repeat", { fg = c.keyword })
    set("Label", { fg = c.keyword })
    set("Operator", { fg = c.keyword })
    set("Keyword", { fg = c.keyword, italic = c.italicKeyword or false })
    set("Exception", { fg = c.keyword })

    set("PreProc", { fg = c.keyword })
    set("Include", { fg = c.keyword })
    set("Define", { fg = c.keyword })
    set("Macro", { fg = c.keyword })
    set("PreCondit", { fg = c.keyword })

    set("Type", { fg = c.type })
    set("StorageClass", { fg = c.type })
    set("Structure", { fg = c.type })
    set("Typedef", { fg = c.type })

    set("Special", { fg = c.constant })
    set("SpecialChar", { fg = c.constant })
    set("Tag", { fg = c.keyword })
    set("Delimiter", { fg = c.fg })
    set("SpecialComment", { fg = c.comment })
    set("Debug", { fg = c.error })


    set("Error", { fg = c.error, bold = true })
    set("Todo", { fg = c.warning, bold = true })
    set("WarningMsg", { fg = c.warning })
    set("ErrorMsg", { fg = c.error })
    set("ModeMsg", { fg = c.info })

    set("CursorLine", { bg = c.cursorline })
    set("CursorLineNr", { fg = c.cursorlnr })
    set("LineNr", { fg = c.linenr })
    set("SignColumn", { bg = c.bg })
    set("MatchParen", { bg = "#777777", fg = "#FFFFFF", bold = true })
    set("Visual", { bg = c.selection })
    set("StatusLine", { fg = c.statuslinefg, bg = c.statuslinebg, bold = true })
    set("StatusLineNC", { fg = c.comment, bg = c.statuslinebg })
    set("Pmenu", { fg = c.fg, bg = c.pmenu })
    set("PmenuSel", { fg = c.fg, bg = c.selection or "#161616" })
    set("DiffAdd", { bg = c.diffadd })
    set("DiffDelete", { bg = c.diffdelete })
    set("CurSearch", { bg = c.curSearch, fg = c.searchFg, bold = true })
    set("Search", { bg = c.searchBg, fg = c.searchFg, bold = true })
    set("prevSearch", { bg = c.searchBg, fg = c.searchFg, bold = true })

    set("FzfLuaFzfMatch", { fg = c.fzfMatch, bold = true })
    set("FzfLuaFzfPrompt", { fg = c.fg })


    set("@comment", { link = "Comment" })
    set("@comment.documentation", { fg = c.comment, italic = true })

    set("@constant", { link = "Constant" })
    set("@constant.builtin", { fg = c.constant, italic = true })
    set("@constant.macro", { link = "Macro" })

    set("@string", { link = "String" })
    set("@string.escape", { fg = c.warning })
    set("@string.special", { fg = c.info })

    set("@character", { link = "Character" })
    set("@number", { link = "Number" })
    set("@boolean", { link = "Boolean" })
    set("@float", { link = "Float" })

    set("@function", { link = "Function" })
    set("@function.builtin", { fg = c.func, italic = true })
    set("@function.call", { link = "Function" })
    set("@method", { fg = c.func })
    set("@method.call", { fg = c.func })
    set("@constructor", { fg = c.type })

    set("@parameter", { fg = c.fg })
    set("@parameter.reference", { fg = c.fg, italic = true })
    set("@variable", { fg = c.fg })
    set("@variable.builtin", { fg = c.constant, italic = true })
    set("@field", { fg = c.fg })
    set("@property", { fg = c.fg })

    set("@operator", { fg = c.keyword })
    set("@keyword", { link = "Keyword" })
    set("@keyword.function", { link = "Keyword" })
    set("@keyword.return", { fg = c.keyword, bold = true })
    set("@conditional", { link = "Conditional" })
    set("@repeat", { link = "Repeat" })
    set("@debug", { fg = c.error })
    set("@label", { link = "Label" })
    set("@include", { link = "Include" })
    set("@exception", { link = "Exception" })

    set("@type", { link = "Type" })
    set("@type.builtin", { fg = c.type, italic = true })
    set("@type.definition", { fg = c.type, bold = true })
    set("@attribute", { fg = c.info })

    set("@punctuation.delimiter", { fg = c.fg })
    set("@punctuation.bracket", { fg = c.fg })
    set("@punctuation.special", { fg = c.constant })

    set("@tag", { fg = c.keyword })
    set("@tag.attribute", { fg = c.type })
    set("@tag.delimiter", { fg = c.fg })

    set("@markup.heading", { fg = c.func, bold = true })
    set("@markup.list", { fg = c.keyword })
    set("@markup.bold", { fg = c.fg, bold = true })
    set("@markup.italic", { fg = c.fg, italic = true })
    set("@markup.link", { fg = c.info, underline = true })

    set("LspDiagnosticsDefaultError", { fg = c.error })
    set("LspDiagnosticsDefaultWarn", { fg = c.warning })
    set("LspDiagnosticsDefaultInfo", { fg = c.info })
    set("LspDiagnosticsDefaultHint", { fg = c.comment })
    set("LspDiagnosticsVirtualTextError", { fg = c.error, bold = true })
    set("LspDiagnosticsVirtualTextWarn",
        { fg = c.warning, bold = true })
    set("LspDiagnosticsVirtualTextInfo", { fg = c.info, bold = true })
    set("LspDiagnosticsVirtualTextHint", { fg = c.comment, italic = true })

    set("@lsp.typemod.variable.declaration.lua", { fg = c.constVaribleDeclaration and c.constant or c.fg })
end

return M
