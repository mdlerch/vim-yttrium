" yttrium.vim a colorscheme for vim
" Maintainer: Michael Lerch (github.com/mdlerch)
" Version: 1.1

" A lightish color scheme for 256 and gui vim.
" Goals: easy on the eyes,
"        non-distracting,
"        eye drawn to important parts,
"        completeness of highlight groups,
"        very obvious diffs,
"        consistency between gui and 256 term,

" Normal: 0, 7
" Gradient:  7, 6, 15, 5, 0, 8

" 0 black 1 (grey)
" 1 red 1 (brick)
" 2 green 1 (sea green)
" 3 yellow 1 (yellow)
" 4 blue 1 (dark)
" 5 magenta 1 (medium black)
" 6 cyan 1 (medium white)
" 7 white 1 (light)
" 8 black 2 (light)
" 9 red 2 (bright)
" 10 green 2 (bright)
" 11 yellow 2 (orange)
" 12 blue 2 (light)
" 13 magenta 2 (magenta)
" 14 cyan 2 (cyan)
" 15 white 2 (dark white)

" theme colors
let s:themecol = [[240, "#585858"],
               \  [131, "#af5f5f"],
               \  [67,  "#5f78af"],
               \  [180, "#dfaf87"],
               \  [109, "#87afaf"],
               \  [244, "#808080"],
               \  [253, "#dadada"],
               \  [255, "#eeeeee"],
               \  [238, "#444444"],
               \  [196, "#ff0000"],
               \  [114, "#87ff00"],
               \  [173, "#d7875f"],
               \  [110, "#87afd7"],
               \  [138, "#af8787"],
               \  [152, "#afd7d7"],
               \  [251, "#c6c6c6"]]


" {{{ Set up
set background=light

" {{{ Setup
set background=light

" highlight clear removes user colors which is annoying if you use them, for
" example, for your status bar.
" highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "yttrium"

" }}}
" {{{ Function

function! s:Yttrium(group, fg, bg, cterm, gui)
    exec "hi clear " . a:group
    if a:fg =~ '\d'
        exec "hi " . a:group . " ctermfg=" . expand(s:themecol[a:fg][0]) . "guifg=" . expand(s:themecol[a:fg][1])
    elseif a:fg == "NONE"
        exec "hi " . a:group . " ctermfg=NONE" . " guifg=NONE"
    endif
    if a:bg =~ '\d'
        exec "hi " . a:group . " ctermbg=" . expand(s:themecol[a:bg][0])
    elseif a:bg == "NONE"
        exec "hi " . a:group . " ctermbg=NONE" . " guibg=NONE"
    endif
    if a:cterm != "" && a:cterm != "NONE"
        exec "hi " . a:group . " cterm=" . a:cterm
    elseif a:cterm == "NONE"
        exec "hi " . a:group . " cterm=NONE"
    endif
    if a:gui != "" && a:gui != "NONE"
        exec "hi " . a:group . " gui=" . a:gui
    elseif a:gui == "NONE"
        exec "hi " . a:group . " gui=NONE"
    endif
endfunction

" }}}
" {{{ Vim groups

"              Group             fg       bg       term          gui
call s:Yttrium("ColorColumn"    , ""     , 8      , "NONE"      , "NONE")
call s:Yttrium("Conceal"        , 15     , 5      , "NONE"      , "NONE")
call s:Yttrium("Cursor"         , ""     , ""     , ""          , "")
" call s:Yttrium ("CursorIM"    , "NONE" , 8      , "NONE"      , "NONE")
call s:Yttrium("CursorColumn"   , "NONE" , 8      , "NONE"      , "NONE")
call s:Yttrium("CursorLine"     , ""     , 15     , "NONE"      , "NONE")
" call s:Yttrium("Directory"    , "NONE" , 8      , "NONE"      , "NONE")
call s:Yttrium("DiffAdd"        , 10     , 7      , "NONE"      , "NONE")
call s:Yttrium("DiffChange"     , 14     , 7      , "NONE"      , "NONE")
call s:Yttrium("DiffDelete"     , 9      , 7      , "NONE"      , "NONE")
call s:Yttrium("DiffText"       , 9      , 7      , "NONE"      , "NONE")
call s:Yttrium("ErrorMsg"       , 1      , 0      , "NONE"      , "NONE")
call s:Yttrium("VertSplit"      , 4      , 8      , "NONE"      , "NONE")
call s:Yttrium("Folded"         , 8      , 5     , "NONE"      , "NONE")
call s:Yttrium("FoldColumn"     , 8      , 0      , "NONE"      , "NONE")
" call s:Yttrium("SignColumn"   , "NONE" , 8      , "NONE"      , "NONE")
call s:Yttrium("IncSearch"      , 5      , 3      , "NONE"      , "NONE")
call s:Yttrium("LineNr"         , 8      , 15     , "NONE"      , "NONE")
call s:Yttrium("CursorLineNr"   , 0      , 7      , "NONE"      , "NONE")
call s:Yttrium("MatchParen"     , ""     , 0      , "NONE"      , "NONE")
" call s:Yttrium("ModeMsg"      , "NONE" , 8      , "NONE"      , "NONE")
" call s:Yttrium("MoreMsg"      , "NONE" , 8      , "NONE"      , "NONE")
call s:Yttrium("NonText"        , 8      , 5      , "NONE"      , "NONE")
call s:Yttrium("Normal"         , 0      , 7      , "NONE"      , "NONE")
call s:Yttrium("Pmenu"          , 15     , 8      , "NONE"      , "NONE")
call s:Yttrium("PmenuSel"       , 7      , 0      , "NONE"      , "NONE")
call s:Yttrium("PmenuSbar"      , ""     , "NONE" , "NONE"      , "NONE")
call s:Yttrium("PmenuThumb"     , ""     , "NONE" , "NONE"      , "NONE")
call s:Yttrium("Question"       , 6      , 8      , "NONE"      , "NONE")
call s:Yttrium("Search"         , 5      , 13     , "NONE"      , "NONE")
call s:Yttrium("SignColumn"     , 9      , 0      , "NONE"      , "NONE")
call s:Yttrium("SpecialKey"     , 8      , 5      , "NONE"      , "NONE")
call s:Yttrium("SpellBad"       , 13     , ""     , "underline" , "undercurl")
call s:Yttrium("SpellCap"       , 13     , ""     , "underline" , "undercurl")
" call s:Yttrium("SpellLocal"   , "NONE" , 8      , "NONE"      , "NONE")
call s:Yttrium("SpellRare"      , 13     , ""     , "NONE"      , "NONE")
" call s:Yttrium("StatusLine"   , "NONE" , 8      , "NONE"      , "NONE")
" call s:Yttrium("StatusLineNC" , "NONE" , 8      , "NONE"      , "NONE")
call s:Yttrium("TabLine"        , 15     , 0      , "NONE"      , "NONE")
call s:Yttrium("TabLineFill"    , 15     , 0      , "NONE"      , "NONE")
call s:Yttrium("TabLineSel"     , 7      , 5      , "NONE"      , "NONE")
call s:Yttrium("Title"          , 2      , "NONE" , "NONE"      , "NONE")
call s:Yttrium("Visual"         , ""     , 6     , "NONE"      , "NONE")
" call s:Yttrium("VisualNOS"    , "NONE" , 8      , "NONE"      , "NONE")
call s:Yttrium("WarningMSG"     , 4      , 0      , "NONE"      , "NONE")
" call s:Yttrium("WildMenu"     , "NONE" , 8      , "NONE"      , "NONE")
" }}} Vim groups
" {{{ Highlight groups

call s:Yttrium("Comment"        , 4      , ""     , "NONE"      , "NONE")
call s:Yttrium("Constant"       , 11     , ""     , "NONE"      , "NONE")
call s:Yttrium("String"         , 2      , ""     , "NONE"      , "NONE")
call s:Yttrium("Character"      , 1      , ""     , "NONE"      , "NONE")
call s:Yttrium("Number"         , 12     , ""     , "NONE"      , "NONE")
call s:Yttrium("Boolean"        , 12     , ""     , "NONE"      , "NONE")
call s:Yttrium("Float"          , 12     , ""     , "NONE"      , "NONE")
call s:Yttrium("Identifier"     , 2      , ""     , "NONE"      , "NONE")
call s:Yttrium("Function"       , 15     , ""     , "NONE"      , "NONE")
call s:Yttrium("Statement"      , 11     , ""     , "NONE"      , "NONE")
call s:Yttrium("Conditional"    , 3      , ""     , "NONE"      , "NONE")
call s:Yttrium("Repeat"         , 3      , ""     , "NONE"      , "NONE")
call s:Yttrium("Label"          , ""     , ""     , "NONE"      , "NONE")
call s:Yttrium("Operator"       , 1      , ""     , "NONE"      , "NONE")
call s:Yttrium("Keyword"        , 3      , ""     , "NONE"      , "NONE")
call s:Yttrium("Exception"      , ""     , ""     , "NONE"      , "NONE")
call s:Yttrium("PreProc"        , 14     , ""     , "NONE"      , "NONE")
call s:Yttrium("Include"        , 14     , ""     , "NONE"      , "NONE")
call s:Yttrium("Define"         , 14     , ""     , "NONE"      , "NONE")
call s:Yttrium("Macro"          , 14     , ""     , "NONE"      , "NONE")
call s:Yttrium("PreCondit"      , 1      , ""     , "NONE"      , "NONE")
call s:Yttrium("Type"           , 11     , ""     , "NONE"      , "NONE")
call s:Yttrium("StorageClass"   , 12     , ""     , "NONE"      , "NONE")
call s:Yttrium("Structure"      , ""     , ""     , "NONE"      , "NONE")
call s:Yttrium("Typedef"        , ""     , ""     , "NONE"      , "NONE")
call s:Yttrium("Special"        , 1      , ""     , "NONE"      , "NONE")
call s:Yttrium("SpecialChar"    , 6      , ""     , "NONE"      , "NONE")
call s:Yttrium("Tag"            , ""     , ""     , "NONE"      , "NONE")
call s:Yttrium("Delimiter"      , 15     , ""     , "NONE"      , "NONE")
call s:Yttrium("SpecialComment" , 6      , ""     , "NONE"      , "NONE")
call s:Yttrium("Debug"          , 6      , ""     , "NONE"      , "NONE")
call s:Yttrium("Underlined"     , 6      , 5      , "underline" , "underline")
call s:Yttrium("Error"          , 9      , ""     , "NONE"      , "NONE")
call s:Yttrium("Todo"           , 9      , 8      , "NONE"      , "NONE")

" }}} Highlight groups
" {{{ Misc

" TagHighlight
call s:Yttrium("CTagsLocalVariable" , "" , "" , "NONE" , "NONE")
call s:Yttrium("CTagsMember"        , "" , "" , "NONE" , "NONE")
" mail
call s:Yttrium("mailQuoted1" , 11 , "" , "NONE" , "NONE")
call s:Yttrium("mailQuoted2" , 13 , "" , "NONE" , "NONE")
call s:Yttrium("mailQuoted3" , 1  , "" , "NONE" , "NONE")
call s:Yttrium("mailQuoted4" , 4  , "" , "NONE" , "NONE")
call s:Yttrium("mailQuoted5" , 12 , "" , "NONE" , "NONE")
call s:Yttrium("mailQuoted6" , 2  , "" , "NONE" , "NONE")
" Nvim-R / Vim-R-plugin
call s:Yttrium("routInput" , 3 , "" , "NONE" , "NONE")
" status
call s:Yttrium("status1" , 12 , 0 , "NONE" , "NONE")
call s:Yttrium("status2" , 11 , 8 , "NONE" , "NONE")
call s:Yttrium("status3" , 9  , 0 , "NONE" , "NONE")
" vim
call s:Yttrium("vimOption" , 3 , "" , "NONE" , "NONE")
call s:Yttrium("qfLineNr"  , 1 , 5  , "NONE" , "NONE")
" ycm
call s:Yttrium("YcmErrorSign"      , 1 , 0  , "NONE" , "NONE")
call s:Yttrium("YcmWarningSign"    , 1 , 0  , "NONE" , "NONE")
call s:Yttrium("YcmErrorSection"   , 1 , "" , "NONE" , "NONE")
call s:Yttrium("YcmWarningSection" , 1 , "" , "NONE" , "NONE")

" }}}

" vim: set fdm=marker:fdl=1
