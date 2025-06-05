--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    Normal       { fg = hsl("#00e963"), bg = hsl("#000000") },
    NormalNC     { fg = hsl("#00c753"), bg = hsl("#000000") },
    Cursor       { fg = hsl("#000000"), bg = hsl("#00ff63") },
    Visual       { bg = hsl("#005500") },
    ColorColumn  { bg = hsl("#001100") },
    CursorLine   { bg = hsl("#001100") },
    CursorColumn { bg = hsl("#001100") },
    LineNr       { fg = hsl("#008800"), bg = hsl("#000000") },
    CursorLineNr { fg = hsl("#ffffff"), bg = hsl("#001100") },

    StatusLine     { fg = hsl("#000000"), bg = hsl("#00ff63"), gui = "bold" },
    StatusLineNC   { fg = hsl("#00b000"), bg = hsl("#004400") },
    VertSplit      { fg = hsl("#00ff63"), bg = hsl("#000000") },
    WinSeparator   { fg = hsl("#00ff63"), bg = hsl("#000000") },

    Pmenu        { fg = hsl("#00ff63"), bg = hsl("#002200") },
    PmenuSel     { fg = hsl("#000000"), bg = hsl("#00ff63") },
    PmenuSbar    { bg = hsl("#004400") },
    PmenuThumb   { bg = hsl("#00ff63") },

    Comment      { fg = hsl("#007700"), gui = "italic" },
    Todo         { fg = hsl("#ffffff"), bg = hsl("#005500"), gui = "bold" },

    Constant     { fg = hsl("#00ffa9") },
    String       { fg = hsl("#00ffa9") },
    Character    { fg = hsl("#00ffa9") },
    Number       { fg = hsl("#00ff63") },
    Boolean      { fg = hsl("#00ff63") },
    Float        { fg = hsl("#00ff63") },

    Function     { fg = hsl("#00ff63") },
    Identifier   { fg = hsl("#00ff63") },
    Statement    { fg = hsl("#00e963") },
    Keyword      { fg = hsl("#00e963") },
    Operator     { fg = hsl("#00e963") },
    Type         { fg = hsl("#00ff63") },
    PreProc      { fg = hsl("#00d500") },
    Special      { fg = hsl("#00ffcc") },
    Underlined   { fg = hsl("#00ffcc"), gui = "underline" },

    MatchParen   { fg = hsl("#ffffff"), bg = hsl("#005500"), gui = "bold" },
    Search       { fg = hsl("#000000"), bg = hsl("#00ff63"), gui = "bold" },
    IncSearch    { fg = hsl("#000000"), bg = hsl("#00ffcc"), gui = "bold" },

    EndOfBuffer  { fg = hsl("#002200") },
    Whitespace   { fg = hsl("#004400") },
    Conceal      { fg = hsl("#006600") },

    DiagnosticError { fg = hsl("#ff0000") },
    DiagnosticWarn  { fg = hsl("#ffff00") },
    DiagnosticInfo  { fg = hsl("#00a088") },
    DiagnosticHint  { fg = hsl("#00ffcc") },

    -- Optional GitSigns or diff mode
    DiffAdd      { fg = hsl("#00ff63"), bg = hsl("#001100") },
    DiffDelete   { fg = hsl("#ff0000"), bg = hsl("#110000") },
    DiffChange   { fg = hsl("#ffff00"), bg = hsl("#111100") },
    DiffText     { fg = hsl("#ffffff"), bg = hsl("#333300") },
   -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)
return theme
