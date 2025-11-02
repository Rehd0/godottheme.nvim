




local M = {}


function M.setup()

  local colors = {
    bg              = "#1D2229",
    fg              = "#DDDFE7",
    yellow          = "#F4E39A",
    red             = "#FF7A9F",
    green           = "#9AEED7",
    darkGreen       = "#6CC068",
    typeGreen       = "#5EF5CA",
    blue            = "#AAC9FE",
    flowerBlue      = "#A3A3F5",
    funcCallBlue    = "#1E90FF",
    pink            = "#FF8CCC",
    gray            = "#51545A",
    lightGray       = "#2D3238",
    cyan            = "#5ECFE7",
    errorRed        = "#613C3D",
    errorYellow     = "#3E3E32",
    transparentBlue = "#3F5E7C",
    lightTheme      = "#353D4A",
  }

  -- Define highlights
  local highlights = {
    Normal      = { fg = colors.fg, bg = colors.bg },
    string      = { fg = colors.yellow },
    Number      = { fg = colors.green },
    Boolean     = { fg = colors.red },
    Keyword     = { fg = colors.red },
    Comment     = { fg = colors.gray, italic = false, bold = false },
    Operator    = { fg = colors.blue },
    Delimiter   = { fg = colors.blue },
    MatchParen  = { bg = colors.lightGray, underline = true },
    Statement   = { fg = colors.red },
    Conditional = { fg = colors.pink },
    Exception   = { fg = colors.pink },
    Function    = { fg = colors.cyan },
    Type        = { fg = colors.green },
    PreProc     = { fg = colors.darkGreen },
    Call        = { fg = colors.flowerBlue },

    DiagnosticError = { fg = "#EE0000", bg = colors.errorRed, bold = false },
    DiagnosticWarn  = { fg = "#EEEE00", bg = colors.errorYellow, bold = false },

    CursorLine = { bg = colors.lightGray },

    Visual       = { bg = colors.transparentBlue },
    TabLine      = { fg = "#666D75", bg = "#242B34" },
    TabLineSel   = { bg = colors.lightTheme },
    WinSeparator = { fg = "#476E8F" },

    Search = { bg = colors.transparentBlue },
    StatusLine = { fg = colors.lightTheme },

    -- ==================================================
    -- Popup menu (autocomplete, command line, etc.) for cmp
    -- ==================================================
    Pmenu        = { fg = colors.fg, bg = colors.lightGray },
    PmenuSel     = { fg = colors.bg, bg = colors.funcCallBlue },
    PmenuSbar    = { bg = colors.darkGray },
    PmenuThumb   = { bg = colors.funcCallBlue },
    PmenuKind    = { fg = colors.cyan },
    PmenuExtra   = { fg = colors.gray },
    -- for Coc
    CocMenuSel   = { fg = colors.bg, bg = colors.funcCallBlue, bold = true },
    CocFloating  = { bg = colors.lightGray },
    CocPumMenu   = { fg = colors.fg, bg = colors.lightGray },
    CocSearch    = { fg = colors.yellow, bg = colors.transparentBlue, bold = true },

    -- ==================================================
    -- Treesitter support
    -- ==================================================
    ["@string.special.url"]  = { fg = colors.darkGreen },
    ["@function.builtin"]    = { fg = colors.flowerBlue },
    ["@keyword.conditional"] = { fg = colors.pink },
    ["@keyword.repeat"]      = { fg = colors.pink },
    ["@keyword.exception"]   = { fg = colors.pink },
    ["@type.builtin"]        = { fg = colors.typeGreen },
    ["@keyword.return"]      = { fg = colors.pink },
    ["@function.call"]       = { fg = colors.funcCallBlue },

    -- ==================================================
    -- HTML / CSS PHP XNL
    -- ==================================================
    Tag = { fg = colors.red },
    ["@htmlLink"] = { fg = colors.errorYellow },
    ["@tag.delimiter"]          = { fg = colors.blue },
    ["@tag.attribute"]          = { fg = colors.blue },
    ["@tag.string"]             = { fg = colors.yellow },
    ["@tag.property"] = { fg = colors.flowerBlue },

    -- Treesitter context
    TreesitterContext           = { fg = colors.fg, bg = colors.lightGray },
    TreesitterContextLineNumber = { fg = colors.gray, bg = colors.lightGray },

    -- indent Blank line
    IblScope = { fg = colors.blue },

  }

  -- ==================================================
  -- Apply highlights
  -- ==================================================
  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end

end



return M
