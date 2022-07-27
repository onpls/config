local palette = {

  grey0           = '#1E1E1E',
  grey1           = '#252525',
  grey2           = '#2D2D30',
  grey3           = '#3e3e3e',
  grey4           = '#606060',
  grey5           = '#808080',
  grey6           = '#AEAFAD',
  grey7           = '#BBBBBB',

  fg              = '#D4D4D4',
  bg              = '#1E1E1E',
  popup_back      = '#2D2D30',
  dark_grey       = '#3e3e3e',
  cursor_fg       = '#515052',
  context         = '#606060',
  light_grey      = '#c8c9c1',
  accent          = '#BBBBBB',
  cursor_bg       = '#AEAFAD',
  light_blue      = '#91CCEB',
  blue            = '#569CD6',
  dark_blue       = '#223E55',
  cyan            = '#4EC9B0',
  green           = '#6A9955',
  light_green     = '#B5CEA8',
  red             = '#F44747',
  light_red       = '#D16969',
  orange          = '#CE9178',
  yellow          = '#DCDCAA',
  yellow_orange   = '#D7BA7D',
  purple          = '#C586C0',
  magenta         = '#D16D9E',
  error_red       = '#F44747',
  warning_orange  = '#ff8800',
  none            = "NONE",
}

function palette.terminal_color()
  vim.g.terminal_color_0  = palette.bg
  vim.g.terminal_color_1  = palette.red
  vim.g.terminal_color_2  = palette.green
  vim.g.terminal_color_3  = palette.yellow
  vim.g.terminal_color_4  = palette.blue
  vim.g.terminal_color_5  = palette.purple
  vim.g.terminal_color_6  = palette.cyan
  vim.g.terminal_color_7  = palette.fg
  vim.g.terminal_color_8  = palette.brown
  vim.g.terminal_color_9  = palette.red
  vim.g.terminal_color_10 = palette.green
  vim.g.terminal_color_11 = palette.yellow
  vim.g.terminal_color_12 = palette.blue
  vim.g.terminal_color_13 = palette.purple
  vim.g.terminal_color_14 = palette.cyan
  vim.g.terminal_color_15 = palette.fg
end

function palette.highlight(group, color)
  local style = color.style and 'gui=' .. color.style or 'gui=NONE'
  local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
  local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
  local sp = color.sp and 'guisp=' .. color.sp or ''
  vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..' ' .. bg..' '..sp)
end

function palette.load_syntax()
  local syntax = {

    -- common
    ColorColumn         = {bg = palette.grey2},
    Conceal             = {fg = palette.grey, bg = palette.grey2},
    Cursor              = {bg = palette.brown},
    CursorColumn        = {bg = palette.grey2},
    CursorIM            = {reverse = true},
    CursorLine          = {bg = palette.grey1},
    CursorLineNr        = {fg = palette.fg},
    Debug               = {fg = palette.yellow},
    DiffAdd             = {fg = palette.none, bg = palette.green},
    DiffAdded           = {fg = palette.green},
    DiffChange          = {fg = palette.none, bg = palette.yellow},
    DiffDelete          = {fg = palette.none, bg = palette.red},
    DiffFile            = {fg = palette.cyan},
    DiffIndexLine       = {fg = palette.grey},
    DiffRemoved         = {fg = palette.red},
    DiffText            = {fg = palette.none, bg= palette.blue},
    Directory           = {fg = palette.blue},
    EndOfBuffer         = {fg = palette.bg},
    ErrorMsg            = {fg = palette.red, bold = true, underline = true},
    FoldColumn          = {fg = palette.fg, bg = palette.grey2},
    Folded              = {fg = palette.fg, bg = palette.grey1},
    IncSearch           = {fg = palette.bg, bg = palette.orange},
    LineNr              = {fg = palette.grey4},
    MatchParen          = {bg = palette.grey2, style = 'bold'},
    MoreMsg             = {fg = palette.blue, bold = true},
    NonText             = {fg = palette.grey},
    Normal              = {fg = palette.fg, bg = palette.bg},
    Pmenu               = {fg = palette.fg, bg = palette.grey2},
    PmenuSbar           = {fg = palette.none, bg = palette.grey2},
    PmenuSel            = {fg = palette.bg, bg = palette.red},
    PmenuThumb          = {fg = palette.none, bg = palette.grey4},
    Question            = {fg = palette.yellow},
    QuickFixLine        = {fg = palette.blue, underline = true},
    Search              = {fg = palette.bg, bg = palette.yellow},
    SignColumn          = {fg = palette.fg, bg = palette.bg},
    SpecialKey          = {fg = palette.grey},
    SpellBad            = {fg = palette.red, underline = true, sp = palette.red},
    SpellCap            = {fg = palette.yellow, underline = true, sp = palette.yellow},
    SpellLocal          = {fg = palette.brown, underline = true, sp = palette.blue},
    SpellRare           = {fg = palette.purple, underline = true, sp = palette.purple},
    StatusLine          = {fg = palette.grey5, bg = palette.popup_black},
    StatusLineNC        = {fg = palette.grey4, bg = palette.grey1},
    StatusLineTerm      = {fg = palette.grey5, bg = palette.popup_black},
    StatusLineTermNC    = {fg = palette.grey4, bg = palette.grey1},
    TabLine             = {fg = palette.fg, bg = palette.grey1},
    TabLineFill         = {fg = palette.grey, bg = palette.grey1},
    TabLineSel          = {fg = palette.grey, bg = palette.grey1},
    Terminal            = {fg = palette.fg, bg = palette.bg},
    ToolbarButton       = {fg = palette.bg, bg = palette.blue},
    ToolbarLine         = {fg = palette.fg},
    VertSplit           = {fg = palette.grey2},
    Visual              = {bg = palette.grey3},
    VisualNOS           = {fg = palette.none, bg = palette.grey3, underline = true},
    WarningMsg          = {fg = palette.yellow, bold = true},
    Whitespace          = {fg = palette.grey},
    WildMenu            = {fg = palette.bg, bg = palette.blue},
    debugBreakpoint     = {fg = palette.bg, bg = palette.red},
    debugPC             = {fg = palette.bg, bg = palette.green},
    iCursor             = {bg = palette.brown},
    lCursor             = {reverse = true},
    vCursor             = {reverse = true},

    -- syntax
    Boolean             = {fg = palette.orange},
    Character           = {fg = palette.green},
    Comment             = {fg = palette.gray, style = 'italic'},
    Conditional         = {fg = palette.purple},
    Constant            = {fg = palette.blue},
    Define              = {fg = palette.purple},
    Delimiter           = {fg = palette.fg},
    Error               = {fg = palette.error_red, bg = palette.bg, style = 'bold'},
    Exception           = {fg = palette.purple},
    Float               = {fg = palette.orange},
    Function            = {fg = palette.blue},
    Identifier          = {fg = palette.fg},
    Include             = {fg = palette.purple},
    Keyword             = {fg = palette.purple},
    Label               = {fg = palette.blue},
    Macro               = {fg = palette.purple},
    Number              = {fg = palette.orange},
    Operator            = {fg = palette.purple},
    PreCondit           = {fg = palette.purple},
    PreProc             = {fg = palette.purple},
    Repeat              = {fg = palette.purple},
    Special             = {fg = palette.purple},
    SpecialChar         = {fg = palette.fg},
    SpecialComment      = {fg = palette.gray},
    Statement           = {fg = palette.purple},
    StorageClass        = {fg = palette.cyan},
    String              = {fg = palette.orange},
    Structure           = {fg = palette.purple},
    Tag                 = {fg = palette.blue},
    Title               = {fg = palette.blue, style = 'bold'},
    Todo                = {fg = palette.red, bg = palette.bg, style = 'bold'},
    Type                = {fg = palette.yellow},
    Typedef             = {fg = palette.purple},
    Variable            = {fg = palette.cyan},
  }
  return syntax
end

function palette.load_plugins()
  local syntax = {

    -- treesitter
    TSAnnotation          = {fg = palette.yellow},
    TSAttribute           = {fg = palette.cyan},
    TSBoolean             = {fg = palette.blue},
    TSCharacter           = {fg = palette.orange},
    TSComment             = {fg = palette.grey5},
    TSConditional         = {fg = palette.blue},
    TSConstBuiltin        = {fg = palette.blue},
    TSConstMacro          = {fg = palette.cyan},
    TSConstant            = {fg = palette.blue},
    TSConstructor         = {fg = palette.cyan},
    TSEmphasis            = {style = 'italic'},
    TSError               = {fg = palette.error_red},
    TSException           = {fg = palette.purple},
    TSField               = {fg = palette.light_blue},
    TSFloat               = {fg = palette.light_green},
    TSFuncBuiltin         = {fg = palette.yellow},
    TSFuncMacro           = {fg = palette.yellow},
    TSFunction            = {fg = palette.yellow},
    TSInclude             = {fg = palette.purple},
    TSKeyword             = {fg = palette.blue},
    TSKeywordFunction     = {fg = palette.blue},
    TSKeywordOperator     = {fg = palette.blue},
    TSKeywordReturn       = {fg = palette.purple},
    TSLabel               = {fg = palette.light_blue},
    TSLiteral             = {fg = palette.yellow_orange},
    TSMethod              = {fg = palette.yellow},
    TSNamespace           = {fg = palette.cyan},
    TSNumber              = {fg = palette.light_green},
    TSOperator            = {fg = palette.fg},
    TSParameter           = {fg = palette.light_blue},
    TSParameterReference  = {fg = palette.light_blue},
    TSProperty            = {fg = palette.light_blue},
    TSPunctBracket        = {fg = palette.fg},
    TSPunctDelimiter      = {fg = palette.fg},
    TSPunctSpecial        = {fg = palette.fg},
    TSQueryLinterError    = {fg = palette.warning_orange},
    TSRepeat              = {fg = palette.purple},
    TSString              = {fg = palette.orange},
    TSStringEscape        = {fg = palette.yellow_orange},
    TSStringRegex         = {fg = palette.orange},
    TSStrong              = {fg = palette.yellow_orange},
    TSStructure           = {fg = palette.light_blue},
    TSSymbol              = {fg = palette.light_blue},
    TSTag                 = {fg = palette.brown},
    TSTagDelimiter        = {fg = palette.gray},
    TSText                = {fg = palette.fg},
    TSTitle               = {fg = palette.blue, style = 'bold'},
    TSType                = {fg = palette.cyan},
    TSTypeBuiltin         = {fg = palette.blue},
    TSURI                 = {fg = palette.yellow_orange, style = 'underline'},
    TSUnderline           = {style = 'underline'},
    TSVariable            = {fg = palette.light_blue},
    TSVariableBuiltin     = {fg = palette.light_blue},

    -- git signs
    GitSignsAdd                     = {fg = palette.green},
    GitSignsAddLn                   = {fg = palette.green},
    GitSignsAddNr                   = {fg = palette.green},
    GitSignsChange                  = {fg = palette.blue},
    GitSignsChangeLn                = {fg = palette.blue},
    GitSignsChangeNr                = {fg = palette.blue},
    GitSignsDelete                  = {fg = palette.red},
    GitSignsDeleteLn                = {fg = palette.red},
    GitSignsDeleteNr                = {fg = palette.red},

    -- telescope
    TelescopeBorder                 = {fg = palette.blue},
    TelescopePromptBorder           = {fg = palette.blue},
    TelescopeResultsBorder          = {fg = palette.blue},
    TelescopePreviewBorder          = {fg = palette.blue},
    TelescopePromptPrefix           = {fg = palette.grey4},
    TelescopeSelectionCaret         = {fg = palette.grey4},

    -- dashboard
    DashboardHeader                 = {fg = palette.green},
    DashboardCenter                 = {fg = palette.blue},
    DashboardShortcut               = {fg = palette.cyan},
    DashboardFooter                 = {fg = palette.orange},

    -- nvim tree
    NvimTreeFolderName              = {fg = palette.blue},
    NvimTreeSpecialFile             = {fg = palette.green, underline=false},

    -- lsp related
    LspDiagnosticsSignError         = {fg=palette.red};
    LspDiagnosticsSignWarning       = {fg=palette.yellow};
    LspDiagnosticsSignInformation   = {fg=palette.blue};
    LspDiagnosticsSignHint          = {fg=palette.purple};

    LspDiagnosticsVirtualTextError        = {fg=palette.red};
    LspDiagnosticsVirtualTextWarning      = {fg=palette.yellow};
    LspDiagnosticsVirtualTextInformation  = {fg=palette.blue};
    LspDiagnosticsVirtualTextHint         = {fg=palette.purple};

    LspDiagnosticsUnderlineError        = {style="undercurl",sp=palette.red};
    LspDiagnosticsUnderlineWarning      = {style="undercurl",sp=palette.yellow};
    LspDiagnosticsUnderlineInformation  = {style="undercurl",sp=palette.blue};
    LspDiagnosticsUnderlineHint         = {style="undercurl",sp=palette.purple};

		LspReferenceRead = {bg = "#36383F", },
		LspReferenceText = {bg = "#36383F", },
		LspReferenceWrite = {bg = "#36383f", },
		-- LspCodeLens = {fg = C.context, style = "italic", },
		-- LspCodeLensSeparator = {fg = C.context, style = "italic", },

    -- markdown
    markdownBlockquote            = {fg = palette.grey},
    markdownBold                  = {fg = palette.none, bold = true},
    markdownBoldDelimiter         = {fg = palette.red},
    markdownCode                  = {fg = palette.green},
    markdownCodeBlock             = {fg = palette.green},
    markdownCodeDelimiter         = {fg = palette.yellow},
    markdownH1                    = {fg = palette.orange, bold = true},
    markdownH2                    = {fg = palette.orange, bold = true},
    markdownH3                    = {fg = palette.orange, bold = true},
    markdownH4                    = {fg = palette.orange, bold = true},
    markdownH5                    = {fg = palette.orange, bold = true},
    markdownH6                    = {fg = palette.orange, bold = true},
    markdownHeadingDelimiter      = {fg = palette.grey},
    markdownId                    = {fg = palette.yellow},
    markdownIdDeclaration         = {fg = palette.yellow},
    markdownItalic                = {fg = palette.none, italic = true},
    markdownItalicDelimiter       = {fg = palette.red, italic = true},
    markdownLinkDelimiter         = {fg = palette.yellow},
    markdownLinkText              = {fg = palette.red},
    markdownLinkTextDelimiter     = {fg = palette.yellow},
    markdownListMarker            = {fg = palette.red},
    markdownOrderedListMarker     = {fg = palette.red},
    markdownRule                  = {fg = palette.purple},
    markdownUrl                   = {fg = palette.blue, underline = true},
    markdownUrlDelimiter          = {fg = palette.yellow},
    markdownUrlTitleDelimiter     = {fg = palette.green}
  }
  return syntax
end

local async_load_plugin

-- Loading commons
async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function ()
  palette.terminal_color()
  local syntax = palette.load_plugins()
  for group,colors in pairs(syntax) do
    palette.highlight(group,colors)
  end
  async_load_plugin:close()
end))

-- Loading Plugins
function palette.colorscheme()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = 'palette'
  local syntax = palette.load_syntax()
  for group,colors in pairs(syntax) do
    palette.highlight(group,colors)
  end
  async_load_plugin:send()
end

palette.colorscheme()
