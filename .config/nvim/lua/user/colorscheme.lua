local palette = {
  fg              = '#D4D4D4',
  bg              = '#1E1E1E',
  dark            = '#252525',
  popup_back      = '#2D2D30',
  dark_grey       = '#3e3e3e',
  context         = '#606060',
  grey            = '#808080',
  accent          = '#BBBBBB',
  light_grey      = '#c8c9c1',
  search_orange   = '#613214',
  search_blue     = '#5e81ac',
  blue            = '#569CD6',
  dark_blue       = '#223E55',
  light_blue      = '#9CDCFE',
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
  cursor_fg       = '#515052',
  cursor_bg       = '#AEAFAD',
  error_red       = '#F44747',
  warning_orange  = '#ff8800',
  info_yellow     = '#FFCC66',
  hint_blue       = '#4FC1FF',
  ui_blue         = '#264F78',
  diff_add        = '#587c0c',
  diff_change     = '#0c7d9d',
  diff_delete     = '#94151b',
  diff_text       = '#265478',
  none            = "NONE"
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
    ColorColumn         = {bg = palette.dark},
    Conceal             = {fg = palette.grey, bg = palette.dark},
    Cursor              = {bg = palette.blue},
    CursorColumn        = {bg = palette.dark},
    CursorIM            = {reverse = true},
    CursorLine          = {bg = palette.dark},
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
    FoldColumn          = {fg = palette.fg, bg = palette.dark},
    Folded              = {fg = palette.fg, bg = palette.dark},
    IncSearch           = {fg = palette.bg, bg = palette.orange},
    LineNr              = {fg = palette.grey},
    MatchParen          = {fg = palette.none, bg = palette.grey},
    MoreMsg             = {fg = palette.blue, bold = true},
    NonText             = {fg = palette.grey},
    Normal              = {fg = palette.fg, bg = palette.bg},
    Pmenu               = {fg = palette.fg, bg = palette.dark},
    PmenuSbar           = {fg = palette.none, bg = palette.dark},
    PmenuSel            = {fg = palette.bg, bg = palette.red},
    PmenuThumb          = {fg = palette.none, bg = palette.grey},
    Question            = {fg = palette.yellow},
    QuickFixLine        = {fg = palette.blue, underline = true},
    Search              = {fg = palette.bg, bg = palette.yellow},
    SignColumn          = {fg = palette.fg, bg = palette.bg},
    SpecialKey          = {fg = palette.grey},
    SpellBad            = {fg = palette.red, underline = true, sp = palette.red},
    SpellCap            = {fg = palette.yellow, underline = true, sp = palette.yellow},
    SpellLocal          = {fg = palette.blue, underline = true, sp = palette.blue},
    SpellRare           = {fg = palette.purple, underline = true, sp = palette.purple},
    StatusLine          = {fg = palette.fg, bg = palette.popup_black},
    StatusLineNC        = {fg = palette.grey, bg = palette.dark},
    StatusLineTerm      = {fg = palette.fg, bg = palette.popup_black},
    StatusLineTermNC    = {fg = palette.grey, bg = palette.dark},
    TabLine             = {fg = palette.fg, bg = palette.dark},
    TabLineFill         = {fg = palette.grey, bg = palette.dark},
    TabLineSel          = {fg = palette.grey, bg = palette.dark},
    Terminal            = {fg = palette.fg, bg = palette.bg},
    ToolbarButton       = {fg = palette.bg, bg = palette.blue},
    ToolbarLine         = {fg = palette.fg},
    VertSplit           = {fg = palette.dark},
    Visual              = {bg = palette.grey},
    VisualNOS           = {fg = palette.none, bg = palette.grey, underline = true},
    WarningMsg          = {fg = palette.yellow, bold = true},
    Whitespace          = {fg = palette.grey},
    WildMenu            = {fg = palette.bg, bg = palette.blue},
    debugBreakpoint     = {fg = palette.bg, bg = palette.red},
    debugPC             = {fg = palette.bg, bg = palette.green},
    iCursor             = {bg = palette.blue},
    lCursor             = {reverse = true},
    vCursor             = {reverse = true},

    -- syntax
    Boolean             = {fg = palette.orange},
    Character           = {fg = palette.green},
    Comment             = {fg = palette.gray, style = 'italic'},
    Conditional         = {fg = palette.purple},
    Constant            = {fg = palette.orange},
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
    String              = {fg = palette.green},
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
    TSComment             = {fg = palette.green},
    TSConditional         = {fg = palette.blue},
    TSConstBuiltin        = {fg = palette.blue},
    TSConstMacro          = {fg = palette.cyan},
    TSConstant            = {fg = palette.yellow},
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
    TSTag                 = {fg = palette.blue},
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
    GitSignsAdd                     = {fg = palette.blue},
    GitSignsAddLn                   = {fg = palette.blue},
    GitSignsAddNr                   = {fg = palette.blue},
    GitSignsChange                  = {fg = palette.yellow},
    GitSignsChangeLn                = {fg = palette.yellow},
    GitSignsChangeNr                = {fg = palette.yellow},
    GitSignsDelete                  = {fg = palette.red},
    GitSignsDeleteLn                = {fg = palette.red},
    GitSignsDeleteNr                = {fg = palette.red},

    -- telescope
    TelescopeBorder                 = {fg = palette.fg},
    TelescopePromptBorder           = {fg = palette.fg},
    TelescopeResultsBorder          = {fg = palette.fg},
    TelescopePreviewBorder          = {fg = palette.fg},
    TelescopePromptPrefix           = {fg = palette.blue},
    TelescopeSelectionCaret         = {fg = palette.blue},

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

return my_scheme
