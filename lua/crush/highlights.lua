local M = {}

M.apply_theme = function(set, c)
    vim.cmd("hi clear")
    set("Normal", { fg = c.fg, bg = c.bg })
    set("NormalNC", { fg = c.fg, bg = c.bg })
    set("CursorLine", { bg = c.cursorline })
    set("CursorLineNr", { fg = c.cursorlnr })
    set("LineNr", { fg = c.linenr })
    set("SignColumn", { bg = c.bg })
    set("Visual", { bg = c.selection })
    set("MatchParen", { bg = "#777777", fg = "#FFFFFF", bold = true })

    -- UI
    set("StatusLine", { fg = c.statuslinefg, bg = c.statuslinebg })
    set("StatusLineNC", { fg = c.comment, bg = c.statuslinebg })
    set("Pmenu", { fg = c.fg, bg = c.pmenu })
    set("PmenuSel", { fg = c.fg, bg = c.selection })

    -- Syntax
    set("Comment", { fg = c.comment, italic = true })
    set("Constant", { fg = c.constant })
    set("String", { fg = c.string })
    set("Character", { fg = c.string })
    set("Number", { fg = c.number })
    set("Boolean", { fg = c.constant })
    set("Float", { fg = c.number })
    set("Identifier", { fg = c.fg })
    set("Function", { fg = c.func, bold = c.boldFunction or false })

    set("Statement", { fg = c.keyword, bold = c.keywordBold or false })
    set("Conditional", { fg = c.keyword, italic = c.italicKeyword or false })
    set("Repeat", { fg = c.keyword })
    set("Label", { fg = c.keyword })
    set("Operator", { fg = c.keyword, bold = c.operatorBold or false })
    set("Keyword", { fg = c.keyword, italic = c.italicKeyword or false })

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
    set("SpecialComment", { fg = c.comment, italic = true })
    set("Tag", { fg = c.keyword })
    set("Delimiter", { fg = c.fg })

    -- Errors & Warnings
    set("Error", { fg = c.error, bold = true })
    set("WarningMsg", { fg = c.warning })
    set("ErrorMsg", { fg = c.error })
    set("ModeMsg", { fg = c.info })
    set("Todo", { fg = c.warning, bold = true })

    -- Search
    set("Search", { bg = c.searchBg, fg = c.searchFg, bold = true })
    set("CurSearch", { bg = c.curSearch, fg = c.searchFg, bold = true })
    set("IncSearch", { bg = c.curSearch, fg = c.searchFg, bold = true })

    -- FZF
    set("FzfLuaFzfMatch", { fg = c.fzfMatch, bold = true })
    set("FzfLuaFzfPrompt", { fg = c.fg })

    -- LSP
    set("LspDiagnosticsDefaultError", { fg = c.error })
    set("LspDiagnosticsDefaultWarn", { fg = c.warning })
    set("LspDiagnosticsDefaultHint", { fg = c.comment })
    set("LspDiagnosticsDefaultInfo", { fg = c.info })

    set("LspDiagnosticsVirtualTextError", { fg = c.error, bold = true })
    set("LspDiagnosticsVirtualTextWarn", { fg = c.warning, bold = true })
    set("LspDiagnosticsVirtualTextHint", { fg = c.comment, italic = true })
    set("LspDiagnosticsVirtualTextInfo", { fg = c.info, bold = true })

    -- Treesitter
    set("@comment", { link = "Comment" })
    set("@comment.documentation", { fg = c.comment, italic = true })

    set("@constant", { link = "Constant" })
    set("@constant.builtin", { fg = c.constant, italic = true, bold = c.constBuiltinBold or false })

    set("@string", { link = "String" })
    set("@string.escape", { fg = c.warning })
    set("@string.special", { fg = c.info })

    set("@number", { link = "Number" })
    set("@boolean", { link = "Boolean" })
    set("@float", { link = "Float" })

    set("@function", { link = "Function" })
    set("@function.builtin", { fg = c.func, italic = true })
    set("@function.call", { fg = c.func, bold = c.boldFunction or false })

    set("@method", { fg = c.func })
    set("@method.call", { fg = c.func, italic = c.methodItalic or false })

    set("@constructor", { fg = c.type })
    set("@parameter", { fg = c.fg })
    set("@parameter.reference", { fg = c.fg, italic = true })

    set("@variable", { fg = c.fg })
    set("@variable.builtin", { fg = c.constant, italic = true })
    set("@field", { fg = c.fg })
    set("@property", { fg = c.fg })

    set("@operator", { fg = c.keyword, bold = c.operatorBold or false })
    set("@keyword", { fg = c.keyword, italic = c.italicKeyword or false, bold = c.keywordBold or false })
    set("@keyword.function", { fg = c.keyword, italic = c.italicKeyword or false })

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

    -- LSP Typemods (specific for some languages)
    set("@lsp.typemod.variable.declaration.lua", {
        fg = c.constVaribleDeclaration and c.constant or c.fg
    })
end

return M
