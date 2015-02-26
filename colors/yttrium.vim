" yttrium.vim a colorscheme for vim
" Maintainer: Michael Lerch (github.com/mdlerch)
" Version: 1.0

" A lightish color scheme for 256 and gui vim.
" Goals: easy on the eyes,
"        non-distracting,
"        eye drawn to important parts,
"        completeness of highlight groups,
"        very obvious diffs,
"        consistency between gui and 256 term,

" theme colors
let s:color0C  = 251 " white 1 (dark)
let s:color1C  = 131 " red 1 (brick)
let s:color2C  = 109 " green 1 (sea green)
let s:color3C  = 180 " yellow 1 (yellow)
let s:color4C  = 67  " blue 1 (dark)
let s:color5C  = 253 " magenta 1 (medium white)
let s:color6C  = 238 " cyan 1 (medium black)
let s:color7C  = 244 " black 1 (light)
let s:color8C  = 255 " white 2 (light)
let s:color9C  = 196 " red 2 (bright)
let s:color10C = 118 " green 2 (bright)
let s:color11C = 173 " yellow 2 (orange)
let s:color12C = 110 " blue 2 (light)
let s:color13C = 138 " magenta 2 (magenta)
let s:color14C = 152 " cyan 2 (cyan)
let s:color15C = 232 " black 2 (dark)

let s:color0G  = "#1c1c1c" " black 1 (dark)
let s:color1G  = "#af5f5f" " red 1 (brick)
let s:color2G  = "#87d7af" " green 1 (sea green)
let s:color3G  = "#d7d7af" " yellow 1 (yellow)
let s:color4G  = "#5f5f87" " blue 1 (dark)
let s:color5G  = "#303030" " magenta 1 (medium black)
let s:color6G  = "#d0d0d0" " cyan 1 (medium white)
let s:color7G  = "#e4e4e4" " white 1 (light)
let s:color8G  = "#444444" " black 2 (light)
let s:color9G  = "#ff0000" " red 2 (bright)
let s:color10G = "#87ff00" " green 2 (bright)
let s:color11G = "#d7af87" " yellow 2 (orange)
let s:color12G = "#87afd7" " blue 2 (light)
let s:color13G = "#af8787" " magenta 2 (magenta)
let s:color14G = "#87ffff" " cyan 2 (cyan)
let s:color15G = "#949494" " white 2 (dark)

" {{{ Set up
set background=light

" highlight clear removes user colors which is annoying if you use them, for
" example, for your status bar.
" highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "yttrium"

function! YttriumC(group, fg, bg, attr)
    exec "hi clear " . a:group
    if a:fg != ""
        exec "hi " . a:group . " ctermfg=" . a:fg
    endif
    if a:bg != ""
        exec "hi " . a:group . " ctermbg=" . a:bg
    endif
    if a:attr != ""
        exec "hi " . a:group . " cterm=" . a:attr
    endif
endfunction

function! YttriumG(group, fg, bg, attr)
    exec "hi clear " . a:group
    if a:fg != ""
        exec "hi " . a:group . " guifg=" . a:fg
    endif
    if a:bg != ""
        exec "hi " . a:group . " guibg=" . a:bg
    endif
    if a:attr != ""
        exec "hi " . a:group . " gui=" . a:attr
    endif
endfunction

" }}}

if has("gui_running")
    " {{{ Vim groups
    call YttriumG("ColorColumn", "", s:color8G, "NONE")
    call YttriumG("Conceal", s:color15G, s:color5G, "NONE")
    call YttriumG("Cursor", "", s:color7G, "")
    " call YttriumG("CursorIM", "NONE", s:color8G, "NONE")
    " call YttriumG("CursorIM", "NONE", s:color8G, "NONE")
    call YttriumG("CursorColumn", "NONE", s:color8G, "NONE")
    call YttriumG("CursorLine", "", s:color8G, "NONE")
    " call YttriumG("Directory", "NONE", s:color8G, "NONE")
    call YttriumG("DiffAdd", s:color10G, s:color5G, "NONE")
    call YttriumG("DiffChange", s:color2G, s:color5G, "NONE")
    call YttriumG("DiffDelete", s:color9G, s:color5G, "NONE")
    call YttriumG("DiffText", s:color9G, s:color5G, "NONE")
    call YttriumG("ErrorMsg", s:color1G, s:color0G, "NONE")
    call YttriumG("VertSplit", s:color4G, s:color8G, "NONE")
    call YttriumG("Folded", s:color15G, s:color0G, "NONE")
    " call YttriumG("FoldColumn", "NONE", s:color8G, "NONE")
    " call YttriumG("SignColumn", "NONE", s:color8G, "NONE")
    call YttriumG("IncSearch", s:color5G, s:color3G, "NONE")
    call YttriumG("LineNr", s:color8G, s:color0G, "NONE")
    call YttriumG("CursorLineNr", s:color7G, s:color5G, "NONE")
    call YttriumG("MatchParen", "", s:color0G, "NONE")
    " call YttriumG("ModeMsg", "NONE", s:color8G, "NONE")
    " call YttriumG("MoreMsg", "NONE", s:color8G, "NONE")
    call YttriumG("NonText", s:color8G, s:color5G, "NONE")
    call YttriumG("Normal", s:color6G, s:color5G, "NONE")
    call YttriumG("Pmenu", s:color15G, s:color8G, "NONE")
    call YttriumG("PmenuSel", s:color7G, s:color0G, "NONE")
    call YttriumG("PmenSbar", "", s:color8G, "NONE")
    call YttriumG("PmenuThumb", "", s:color8G, "NONE")
    call YttriumG("Question", s:color6G, s:color8G, "NONE")
    call YttriumG("Search", s:color5G, s:color13G, "NONE")
    call YttriumG("SignColumn", s:color9G, s:color0G, "NONE")
    call YttriumG("SpecialKey", s:color8G, s:color5G, "NONE")
    call YttriumG("SpellBad", s:color13G, "", "undercurl")
    call YttriumG("SpellCap", s:color13G, "", "undercurl")
    " call YttriumG("SpellLocal", "NONE", s:color8G, "NONE")
    " call YttriumG("SpellRare", "NONE", s:color8G, "NONE")
    " call YttriumG("StatusLine", "NONE", s:color8G, "NONE")
    " call YttriumG("StatusLineNC", "NONE", s:color8G, "NONE")
    call YttriumG("TabLine", s:color15G, s:color0G, "NONE")
    call YttriumG("TabLineFill", s:color15G, s:color0G, "NONE")
    call YttriumG("TabLineSel", s:color7G, s:color5G, "NONE")
    call YttriumG("Title", s:color2G, "NONE", "NONE")
    call YttriumG("Visual", "", s:color0G, "NONE")
    " call YttriumG("VisualNOS", "NONE", s:color8G, "NONE")
    call YttriumG("WarningMSG", s:color4G, s:color0G, "NONE")
    " call YttriumG("WildMenu", "NONE", s:color8G, "NONE")
    " }}} Vim groups
    " {{{ Highlight groups
    call YttriumG("Comment", s:color4G, "", "")
    call YttriumG("Constant", s:color11G, "", "")
    call YttriumG("String", s:color2G, "", "")
    call YttriumG("Character", s:color1G, "", "")
    call YttriumG("Number", s:color12G, "", "")
    call YttriumG("Boolean", s:color12G, "", "")
    call YttriumG("Float", s:color12G, "", "")
    call YttriumG("Identifier", s:color2G, "", "NONE")
    call YttriumG("Function", s:color15G, "", "NONE")
    call YttriumG("Statement", s:color11G, "", "")
    call YttriumG("Conditional", s:color3G, "", "")
    call YttriumG("Repeat", s:color3G, "", "")
    call YttriumG("Label", "", "", "")
    call YttriumG("Operator", s:color1G, "", "NONE")
    call YttriumG("Keyword", s:color3G, "", "NONE")
    call YttriumG("Exception", "", "", "NONE")
    call YttriumG("PreProc", s:color14G, "", "")
    call YttriumG("Include", s:color14G, "", "")
    call YttriumG("Define", s:color14G, "", "NONE")
    call YttriumG("Macro", s:color14G, "", "NONE")
    call YttriumG("PreCondit", s:color1G, "", "NONE")
    call YttriumG("Type", s:color15G, "", "NONE")
    call YttriumG("StorageClass", s:color12G, "", "NONE")
    call YttriumG("Structure", "", "", "")
    call YttriumG("Typedef", "", "", "")
    call YttriumG("Special", s:color1G, "", "")
    call YttriumG("SpecialChar", s:color6G, "", "")
    call YttriumG("Tag", "", "", "")
    call YttriumG("Delimiter", s:color15G, "", "")
    call YttriumG("SpecialComment", s:color6G, "", "")
    call YttriumG("Debug", s:color6G, "", "")
    call YttriumG("Underlined",s:color6G, s:color5G, "underline")
    call YttriumG("Error",s:color9G, "", "")
    call YttriumG("Todo", s:color9G, s:color8G, "")
    " }}} Highlight groups
    " {{{ misc
    " TagHighlight
    call YttriumG("LocalVariable", "", "", "NONE")
    call YttriumG("Member", "", "", "NONE")
    " mail
    call YttriumG("mailQuoted1", s:color11G, "", "NONE")
    call YttriumG("mailQuoted2", s:color13G, "", "NONE")
    call YttriumG("mailQuoted3", s:color1G, "", "NONE")
    call YttriumG("mailQuoted4", s:color4G, "", "NONE")
    call YttriumG("mailQuoted5", s:color12G, "", "NONE")
    call YttriumG("mailQuoted6", s:color2G, "", "NONE")
    " vim
    call YttriumG("vimOption", s:color3G, "", "NONE")
    call YttriumG("qfLineNr", s:color1G, s:color5G, "NONE")
    " ycm
    call YttriumG("YcmErrorSign", s:color9G, s:color0G, "NONE")
    call YttriumG("YcmWarningSign", s:color9G, s:color0G, "NONE")
    call YttriumG("YcmErrorSection", s:color1G, "", "NONE")
    call YttriumG("YcmWarningSection", s:color1G, "", "NONE")
    " }}}
endif

if &t_Co==256
    " {{{ Vim groups
    call YttriumC("ColorColumn", "", s:color5C, "NONE")
    call YttriumC("Conceal", s:color15C, s:color5C, "NONE")
    call YttriumC("Cursor", "", "", "")
    " call Yttrium ("CursorIM", "NONE", s:color8C, "NONE")
    call YttriumC("CursorColumn", "NONE", s:color5C, "NONE")
    call YttriumC("CursorLine", "", s:color5C, "NONE")
    " call YttriumC("Directory", "NONE", s:color8C, "NONE")
    call YttriumC("DiffAdd", s:color10C, s:color5C, "NONE")
    call YttriumC("DiffChange", s:color14C, s:color5C, "NONE")
    call YttriumC("DiffDelete", s:color9C, s:color5C, "NONE")
    call YttriumC("DiffText", s:color9C, s:color5C, "NONE")
    call YttriumC("ErrorMsg", s:color1C, s:color0C, "NONE")
    call YttriumC("VertSplit", s:color4C, s:color8C, "NONE")
    call YttriumC("Folded", s:color15C, s:color0C, "NONE")
    " call YttriumC("FoldColumn", "NONE", s:color8C, "NONE")
    " call YttriumC("SignColumn", "NONE", s:color8C, "NONE")
    call YttriumC("IncSearch", s:color5C, s:color3C, "NONE")
    call YttriumC("LineNr", s:color7C, s:color5C, "NONE")
    call YttriumC("CursorLineNr", s:color8C, s:color0C, "NONE")
    call YttriumC("MatchParen", "", s:color0C, "NONE")
    " call YttriumC("ModeMsg", "NONE", s:color8C, "NONE")
    " call YttriumC("MoreMsg", "NONE", s:color8C, "NONE")
    call YttriumC("NonText", s:color8C, s:color8C, "NONE")
    call YttriumC("Normal", s:color6C, s:color8C, "NONE")
    call YttriumC("Pmenu", s:color15C, s:color8C, "NONE")
    call YttriumC("PmenuSel", s:color7C, s:color0C, "NONE")
    call YttriumC("PmenSbar", "", s:color8C, "NONE")
    call YttriumC("PmenuThumb", "", s:color8C, "NONE")
    call YttriumC("Question", s:color6C, s:color8C, "NONE")
    call YttriumC("Search", s:color5C, s:color13C, "NONE")
    call YttriumC("SignColumn", s:color9C, s:color0C, "NONE")
    call YttriumC("SpecialKey", s:color8C, s:color5C, "NONE")
    call YttriumC("SpellBad", s:color13C, "", "underline")
    call YttriumC("SpellCap", s:color13C, "", "underline")
    " call YttriumC("SpellLocal", "NONE", s:color8C, "NONE")
    " call YttriumC("SpellRare", "NONE", s:color8C, "NONE")
    " call YttriumC("StatusLine", "NONE", s:color8C, "NONE")
    " call YttriumC("StatusLineNC", "NONE", s:color8C, "NONE")
    call YttriumC("TabLine", s:color15C, s:color0C, "NONE")
    call YttriumC("TabLineFill", s:color15C, s:color0C, "NONE")
    call YttriumC("TabLineSel", s:color7C, s:color5C, "NONE")
    call YttriumC("Title", s:color2C, "NONE", "NONE")
    call YttriumC("Visual", "", s:color0C, "NONE")
    " call YttriumC("VisualNOS", "NONE", s:color8C, "NONE")
    call YttriumC("WarningMSG", s:color4C, s:color0C, "NONE")
    " call YttriumC("WildMenu", "NONE", s:color8C, "NONE")
    " }}} Vim groups
    " {{{ Highlight groups
    call YttriumC("Comment", s:color4C, "", "")
    call YttriumC("Constant", s:color11C, "", "")
    call YttriumC("String", s:color2C, "", "")
    call YttriumC("Character", s:color1C, "", "")
    call YttriumC("Number", s:color12C, "", "")
    call YttriumC("Boolean", s:color12C, "", "")
    call YttriumC("Float", s:color12C, "", "")
    call YttriumC("Identifier", s:color2C, "", "NONE")
    call YttriumC("Function", s:color15C, "", "NONE")
    call YttriumC("Statement", s:color11C, "", "")
    call YttriumC("Conditional", s:color3C, "", "")
    call YttriumC("Repeat", s:color3C, "", "")
    call YttriumC("Label", "", "", "")
    call YttriumC("Operator", s:color1C, "", "NONE")
    call YttriumC("Keyword", s:color3C, "", "NONE")
    call YttriumC("Exception", "", "", "NONE")
    call YttriumC("PreProc", s:color14C, "", "")
    call YttriumC("Include", s:color14C, "", "")
    call YttriumC("Define", s:color14C, "", "NONE")
    call YttriumC("Macro", s:color14C, "", "NONE")
    call YttriumC("PreCondit", s:color1C, "", "NONE")
    call YttriumC("Type", s:color15C, "", "NONE")
    call YttriumC("StorageClass", s:color12C, "", "NONE")
    call YttriumC("Structure", "", "", "")
    call YttriumC("Typedef", "", "", "")
    call YttriumC("Special", s:color1C, "", "")
    call YttriumC("SpecialChar", s:color6C, "", "")
    call YttriumC("Tag", "", "", "")
    call YttriumC("Delimiter", s:color15C, "", "")
    call YttriumC("SpecialComment", s:color6C, "", "")
    call YttriumC("Debug", s:color6C, "", "")
    call YttriumC("Underlined",s:color6C, s:color5C, "italic")
    call YttriumC("Error",s:color9C, "", "")
    call YttriumC("Todo", s:color9C, s:color8C, "")
    " }}} Highlight groups
    " {{{ Misc
    " TagHighlight
    call YttriumC("CTagsLocalVariable", "", "", "NONE")
    call YttriumC("CTagsMember", "", "", "NONE")
    " mail
    call YttriumC("mailQuoted1", s:color11C, "", "NONE")
    call YttriumC("mailQuoted2", s:color13C, "", "NONE")
    call YttriumC("mailQuoted3", s:color1C, "", "NONE")
    call YttriumC("mailQuoted4", s:color4C, "", "NONE")
    call YttriumC("mailQuoted5", s:color12C, "", "NONE")
    call YttriumC("mailQuoted6", s:color2C, "", "NONE")
    " vim
    call YttriumC("vimOption", s:color3C, "", "NONE")
    call YttriumC("qfLineNr", s:color1C, s:color5C, "NONE")
    " ycm
    call YttriumC("YcmErrorSign", s:color1C, s:color0C, "NONE")
    call YttriumC("YcmWarningSign", s:color1C, s:color0C, "NONE")
    call YttriumC("YcmErrorSection", s:color1C, "", "NONE")
    call YttriumC("YcmWarningSection", s:color1C, "", "NONE")
    " }}}
endif

" vim: set fdm=marker:fdl=1
