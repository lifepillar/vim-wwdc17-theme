" Name:     WWDC17 colorscheme source file
" Author:   Lifepillar <lifepillar@lifepillar.me>
" License:  This file is placed in the public domain

fun! s:hex2rgb(col)
  return map(matchlist(a:col, '^#\?\(..\)\(..\)\(..\)$')[1:3], 'str2nr(v:val,16)')
endf

fun! s:rgb2hex(r,g,b)
  return '#' . printf('%02x', a:r) . printf('%02x', a:g) . printf('%02x', a:b)
endf

fun! s:put(line)
  call append(line('$'), a:line)
endf

fun! s:hl(group, fg, bg, ...) " ... is an optional dictionary of attributes
  call append(line('$'), repeat(' ', a:0 > 0 ? get(a:1, 'indent', 0) : 0) . join([
        \ 'hi', a:group,
        \ 'ctermfg=' . a:fg[1],
        \ 'ctermbg=' . a:bg[1],
        \ 'cterm='   . (a:0 > 0 ? get(a:1, 'cterm', 'NONE') : 'NONE'),
        \ 'guifg='   . a:fg[0],
        \ 'guibg='   . a:bg[0],
        \ 'gui='     . (a:0 > 0 ? get(a:1, 'gui', 'NONE') : 'NONE'),
        \ 'guisp='   . (a:0 > 0 ? get(a:1, 'guisp', 'NONE') : 'NONE')
        \ ]))
endf

fun! s:hlink(src, tgt, ...)
  call append(line('$'), repeat(' ', a:0 > 0 ? get(a:1, 'indent', 0) : 0) . 'hi! link '.a:src.' '.a:tgt)
endf

let s:black      = [s:rgb2hex(101, 101, 103), 0]
let s:red        = [s:rgb2hex(232, 80,  63),  1]
let s:aqua       = [s:rgb2hex(0,   169, 149), 2]
let s:yellow     = [s:rgb2hex(225, 173, 11),  3]
let s:blue       = [s:rgb2hex(58,  93,  111), 4]
let s:magenta    = [s:rgb2hex(219, 45,  69),  5]
let s:teal       = [s:rgb2hex(31,  174, 208), 6]
let s:white      = [s:rgb2hex(248, 248, 248), 7]
let s:ashgrey    = [s:rgb2hex(51,  51,  51),  8]
let s:orange     = [s:rgb2hex(228, 117, 62),  9]
let s:lemongreen = [s:rgb2hex(175, 192, 108), 10]
let s:lightgrey  = [s:rgb2hex(170, 170, 170), 11]
let s:purple     = [s:rgb2hex(140, 97,  166), 12]
let s:grey       = [s:rgb2hex(136, 136, 136), 13]
let s:vlightgrey = [s:rgb2hex(240, 240, 240), 14]
let s:bwhite     = [s:rgb2hex(255, 255, 255), 15]
let s:none       = ["NONE", "NONE"]
let s:fg         = s:black
let s:bg         = s:white

let s:palette = [
      \ s:black,
      \ s:red,
      \ s:aqua,
      \ s:yellow,
      \ s:blue,
      \ s:magenta,
      \ s:teal,
      \ s:white,
      \ s:ashgrey,
      \ s:orange,
      \ s:lemongreen,
      \ s:lightgrey,
      \ s:purple,
      \ s:grey,
      \ s:vlightgrey,
      \ s:bwhite
      \ ]

silent tabnew +setlocal\ ft=vim
insert
" Name:     WWDC17 colorscheme
" Author:   Lifepillar <lifepillar@lifepillar.me>
" License:  This file is placed in the public domain

set background=light
hi clear
if exists('syntax_on')
  syntax reset
endif
let colors_name = 'wwdc17'

.

call s:put("if !has('gui_running') && get(g:, 'wwdc17_term_trans_bg', 0)")
call s:put("  if get(g:, 'wwdc17_high_contrast', 0)")
call s:put("    hi Normal ctermfg=".s:ashgrey[1]." ctermbg=NONE cterm=NONE guifg=".s:ashgrey[0]." guibg=NONE gui=NONE")
call s:put("  else")
call s:put("    hi Normal ctermfg=".s:fg[1]." ctermbg=NONE cterm=NONE guifg=".s:fg[0]." guibg=NONE gui=NONE")
call s:put("  endif")
call s:put("else")
call s:put("  if get(g:, 'wwdc17_high_contrast', 0)")
call s:put("    hi Normal ctermfg=".s:ashgrey[1]." ctermbg=".s:bwhite[1]." cterm=NONE guifg=".s:ashgrey[0]." guibg=".s:bwhite[0]." gui=NONE")
call s:put("  else")
call s:put("    hi Normal ctermfg=".s:fg[1]." ctermbg=".s:bg[1]." cterm=NONE guifg=".s:fg[0]." guibg=".s:bg[0]." gui=NONE")
call s:put("  endif")
call s:put("endif")
call s:put("")
call s:put("let g:wwdc17_palette = [" . join(map(copy(s:palette), {_,c -> "'".c[0]."'"}), ', ') . "]")
call s:put("")

call s:hl("ColorColumn",         s:none,       s:vlightgrey)
call s:hl("Conceal",             s:aqua,       s:none)
call s:hl("Cursor",              s:none,       s:none,       {'cterm': 'NONE,reverse', 'gui': 'NONE,reverse'})
call s:hlink("lCursor",          "Cursor")
call s:hl("CursorIM",            s:none,       s:bg)
call s:hl("CursorColumn",        s:none,       s:vlightgrey)
call s:hl("CursorLine",          s:none,       s:vlightgrey)
call s:hl("CursorLineNr",        s:aqua,       s:vlightgrey)
call s:hl("DiffAdd",             s:lemongreen, s:fg,         {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("DiffChange",          s:yellow,     s:bg,         {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("DiffDelete",          s:red,        s:bg,         {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("DiffText",            s:teal,       s:bg,         {'cterm':  'NONE,bold,reverse', 'gui': 'NONE,bold,reverse'})
call s:hl("Directory",           s:aqua,       s:none)
call s:hl("EndOfBuffer",         s:orange,     s:none)
call s:hl("Error",               s:red,        s:bg,         {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("ErrorMsg",            s:red,        s:bg,         {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("FoldColumn",          s:lightgrey,  s:none)
call s:hl("Folded",              s:lightgrey,  s:none,       {'gui':    'NONE,italic'})
call s:hl("IncSearch",           s:yellow,     s:bg,         {'cterm':  'NONE,reverse',      'gui': 'NONE,standout'})
call s:hl("LineNr",              s:grey,       s:vlightgrey)
call s:hl("MatchParen",          s:none,       s:none,       {'cterm':  'NONE,bold,underline', 'gui': 'NONE,bold,underline', 'guisp': s:ashgrey[0]})
call s:hl("ModeMsg",             s:fg,         s:none)
call s:hl("MoreMsg",             s:orange,     s:none)
call s:hl("NonText",             s:bg,         s:none)
call s:hl("Pmenu",               s:fg,         s:vlightgrey)
call s:hl("PmenuSbar",           s:orange,     s:lightgrey)
call s:hl("PmenuSel",            s:bg,         s:orange)
call s:hl("PmenuThumb",          s:red,        s:orange)
call s:hl("Question",            s:fg,         s:none)
call s:hl("Search",              s:yellow,     s:bg,         {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("SignColumn",          s:orange,     s:none)
call s:hl("SpecialKey",          s:orange,     s:none)
call s:hl("SpellBad",            s:none,       s:none,       {'cterm':  'NONE,underline',    'gui': 'NONE,undercurl',    'guisp':  s:magenta[0]})
call s:hl("SpellCap",            s:purple,     s:none,       {'cterm':  'NONE,underline',    'gui': 'NONE,undercurl',    'guisp':  s:magenta[0]})
call s:hl("SpellLocal",          s:purple,     s:none,       {'cterm':  'NONE,underline',    'gui': 'NONE,undercurl',    'guisp':  s:magenta[0]})
call s:hl("SpellRare",           s:purple,     s:none,       {'cterm':  'NONE,underline',    'gui': 'NONE,undercurl',    'guisp':  s:magenta[0]})

call s:hl("Title",               s:orange,     s:none,       {'cterm':  'NONE,bold',         'gui': 'NONE,bold'})
call s:hl("Visual",              s:blue,       s:bg,         {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("VisualNOS",           s:bg,         s:blue)
call s:hl("WarningMsg",          s:red,        s:none)

call s:put("let s:fc = abs(get(g:, 'wwdc17_frame_color', 10)) % 16")
call s:put("if s:fc == 0")
call s:hl("StatusLine",          s:black,      s:white,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("StatusLineNC",        s:black,      s:lightgrey,  {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:lightgrey,  s:black,      {'indent': 2})
call s:hl("TabLineFill",         s:lightgrey,  s:black,      {'indent': 2})
call s:hl("TabLineSel",          s:white,      s:black,      {'indent': 2})
call s:hl("VertSplit",           s:black,      s:black,      {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:magenta)
call s:put("elseif s:fc == 1")
call s:hl("StatusLine",          s:red,        s:white,      {'cterm':  'NONE,reverse,bold', 'gui': 'NONE,reverse,bold', 'indent': 2})
call s:hl("StatusLineNC",        s:red,        s:white,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:white,      s:red,        {'indent': 2})
call s:hl("TabLineFill",         s:white,      s:red,        {'indent': 2})
call s:hl("TabLineSel",          s:white,      s:orange,     {'indent': 2})
call s:hl("VertSplit",           s:red,        s:red,        {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:lemongreen)
call s:put("elseif s:fc == 2")
call s:hl("StatusLine",          s:aqua,       s:white,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("StatusLineNC",        s:aqua,       s:blue,       {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:blue,       s:aqua,       {'indent': 2})
call s:hl("TabLineFill",         s:blue,       s:aqua,       {'indent': 2})
call s:hl("TabLineSel",          s:white,      s:aqua,       {'indent': 2})
call s:hl("VertSplit",           s:aqua,       s:aqua,       {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:magenta)
call s:put("elseif s:fc == 3")
call s:hl("StatusLine",          s:yellow,     s:white,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("StatusLineNC",        s:yellow,     s:blue,       {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:blue,       s:yellow,     {'indent': 2})
call s:hl("TabLineFill",         s:blue,       s:yellow,     {'indent': 2})
call s:hl("TabLineSel",          s:white,      s:yellow,     {'indent': 2})
call s:hl("VertSplit",           s:yellow,     s:yellow,     {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:magenta)
call s:put("elseif s:fc == 4")
call s:hl("StatusLine",          s:blue,       s:white,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("StatusLineNC",        s:blue,       s:lightgrey,  {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:lightgrey,  s:blue,       {'indent': 2})
call s:hl("TabLineFill",         s:lightgrey,  s:blue,       {'indent': 2})
call s:hl("TabLineSel",          s:white,      s:blue,       {'indent': 2})
call s:hl("VertSplit",           s:blue,       s:blue,       {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:magenta)
call s:put("elseif s:fc == 5")
call s:hl("StatusLine",          s:magenta,    s:white,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("StatusLineNC",        s:magenta,    s:yellow,     {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:yellow,     s:magenta,    {'indent': 2})
call s:hl("TabLineFill",         s:yellow,     s:magenta,    {'indent': 2})
call s:hl("TabLineSel",          s:white,      s:magenta,    {'indent': 2})
call s:hl("VertSplit",           s:magenta,    s:magenta,    {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:yellow)
call s:put("elseif s:fc == 6")
call s:hl("StatusLine",          s:teal,       s:white,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("StatusLineNC",        s:teal,       s:black,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:black,      s:teal,       {'indent': 2})
call s:hl("TabLineFill",         s:black,      s:teal,       {'indent': 2})
call s:hl("TabLineSel",          s:white,      s:teal,       {'indent': 2})
call s:hl("VertSplit",           s:teal,       s:teal,       {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:magenta)
call s:put("elseif s:fc == 7")
call s:hl("StatusLine",          s:white,      s:black,      {'cterm':  'NONE,reverse,bold', 'gui': 'NONE,reverse,bold', 'indent': 2})
call s:hl("StatusLineNC",        s:white,      s:grey,       {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:grey,       s:white,      {'indent': 2})
call s:hl("TabLineFill",         s:grey,       s:white,      {'indent': 2})
call s:hl("TabLineSel",          s:black,      s:vlightgrey, {'cterm':  'NONE,bold',         'gui': 'NONE,bold',         'indent': 2})
call s:hl("VertSplit",           s:white,      s:white,      {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:magenta)
call s:put("elseif s:fc == 8")
call s:hl("StatusLine",          s:ashgrey,    s:white,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("StatusLineNC",        s:ashgrey,    s:lightgrey,  {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:lightgrey,  s:ashgrey,    {'indent': 2})
call s:hl("TabLineFill",         s:lightgrey,  s:ashgrey,    {'indent': 2})
call s:hl("TabLineSel",          s:white,      s:ashgrey,    {'indent': 2})
call s:hl("VertSplit",           s:ashgrey,    s:ashgrey,    {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:magenta)
call s:put("elseif s:fc == 9")
call s:hl("StatusLine",          s:orange,     s:white,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("StatusLineNC",        s:orange,     s:blue,       {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:blue,       s:orange,     {'indent': 2})
call s:hl("TabLineFill",         s:blue,       s:orange,     {'indent': 2})
call s:hl("TabLineSel",          s:white,      s:orange,     {'indent': 2})
call s:hl("VertSplit",           s:orange,     s:orange,     {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:lemongreen)
call s:put("elseif s:fc == 10")
call s:hl("StatusLine",          s:lemongreen, s:white,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("StatusLineNC",        s:lemongreen, s:grey,       {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:grey,       s:lemongreen, {'indent': 2})
call s:hl("TabLineFill",         s:grey,       s:lemongreen, {'indent': 2})
call s:hl("TabLineSel",          s:white,      s:lemongreen, {'indent': 2})
call s:hl("VertSplit",           s:lemongreen, s:lemongreen, {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:magenta)
call s:put("elseif s:fc == 11")
call s:hl("StatusLine",          s:lightgrey,  s:white,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("StatusLineNC",        s:lightgrey,  s:black,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:black,      s:lightgrey,  {'indent': 2})
call s:hl("TabLineFill",         s:black,      s:lightgrey,  {'indent': 2})
call s:hl("TabLineSel",          s:white,      s:lightgrey,  {'indent': 2})
call s:hl("VertSplit",           s:lightgrey,  s:lightgrey,  {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:magenta)
call s:put("elseif s:fc == 12")
call s:hl("StatusLine",          s:purple,     s:white,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("StatusLineNC",        s:purple,     s:lightgrey,  {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:lightgrey,  s:purple,     {'indent': 2})
call s:hl("TabLineFill",         s:lightgrey,  s:purple,     {'indent': 2})
call s:hl("TabLineSel",          s:white,      s:purple,     {'indent': 2})
call s:hl("VertSplit",           s:purple,     s:purple,     {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:magenta)
call s:put("elseif s:fc == 13")
call s:hl("StatusLine",          s:grey,       s:white,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("StatusLineNC",        s:grey,       s:ashgrey,    {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:ashgrey,    s:grey,       {'indent': 2})
call s:hl("TabLineFill",         s:ashgrey,    s:grey,       {'indent': 2})
call s:hl("TabLineSel",          s:white,      s:grey,       {'indent': 2})
call s:hl("VertSplit",           s:grey,       s:grey,       {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:magenta)
call s:put("elseif s:fc == 14")
call s:hl("StatusLine",          s:vlightgrey, s:black,      {'cterm':  'NONE,reverse,bold', 'gui': 'NONE,reverse,bold', 'indent': 2})
call s:hl("StatusLineNC",        s:vlightgrey, s:grey,       {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:grey,       s:vlightgrey, {'indent': 2})
call s:hl("TabLineFill",         s:grey,       s:vlightgrey, {'indent': 2})
call s:hl("TabLineSel",          s:black,      s:vlightgrey, {'cterm':  'NONE,bold',         'gui': 'NONE,bold',         'indent': 2})
call s:hl("VertSplit",           s:vlightgrey, s:vlightgrey, {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:magenta)
call s:put("elseif s:fc == 15")
call s:hl("StatusLine",          s:bwhite,     s:black,      {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("StatusLineNC",        s:bwhite,     s:lightgrey,  {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse',      'indent': 2})
call s:hl("TabLine",             s:lightgrey,  s:bwhite,     {'indent': 2})
call s:hl("TabLineFill",         s:lightgrey,  s:bwhite,     {'indent': 2})
call s:hl("TabLineSel",          s:black,      s:bwhite,     {'indent': 2})
call s:hl("VertSplit",           s:bwhite,     s:bwhite,     {'indent': 2})
call s:hl("WildMenu",            s:bg,         s:magenta)
call s:put("endif")
call s:put("unlet s:fc")

call s:hl("Boolean",             s:lemongreen, s:none)
call s:hl("Character",           s:magenta,    s:none)
call s:hl("Comment",             s:grey,       s:none,       {'gui':    'NONE,italic'})
call s:hl("Constant",            s:aqua,       s:none)
call s:hl("Debug",               s:magenta,    s:none)
call s:hl("Delimiter",           s:blue,       s:none)
call s:hl("Float",               s:lemongreen, s:none)
call s:hl("Function",            s:aqua,       s:none)
call s:hl("Identifier",          s:aqua,       s:none)
call s:hl("Ignore",              s:bg,         s:none)
call s:hl("Include",             s:purple,     s:none)
call s:hl("Keyword",             s:teal,       s:none)
call s:hl("Label",               s:aqua,       s:none)
call s:hl("Number",              s:blue,       s:none)
call s:hl("Operator",            s:teal,       s:none)
call s:hl("PreProc",             s:red,        s:none)
call s:hl("Special",             s:red,        s:none)
call s:hl("SpecialChar",         s:magenta,    s:none)
call s:hl("SpecialComment",      s:magenta,    s:none)
call s:hl("Statement",           s:teal,       s:none)
call s:hl("StorageClass",        s:teal,       s:none)
call s:hl("String",              s:orange,     s:none)
call s:hl("Structure",           s:red,        s:none)
call s:hl("Todo",                s:magenta,    s:none,       {'cterm':  'NONE,bold',         'gui': 'NONE,bold'})
call s:hl("Type",                s:purple,     s:none)
call s:hl("Underlined",          s:none,       s:none,       {'cterm':  'NONE,underline',    'gui': 'NONE,underline'})

" WWDC17 color palette
call s:hl("WWDC17Black",         s:fg,         s:none)
call s:hl("WWDC17Red",           s:red,        s:none)
call s:hl("WWDC17Aqua",          s:aqua,       s:none)
call s:hl("WWDC17Yellow",        s:yellow,     s:none)
call s:hl("WWDC17Blue",          s:blue,       s:none)
call s:hl("WWDC17Magenta",       s:magenta,    s:none)
call s:hl("WWDC17Teal",          s:teal,       s:none)
call s:hl("WWDC17White",         s:bg,         s:none)
call s:hl("WWDC17AshGrey",       s:ashgrey,    s:none)
call s:hl("WWDC17Orange",        s:orange,     s:none)
call s:hl("WWDC17LemonGreen",    s:lemongreen, s:none)
call s:hl("WWDC17LightGrey",     s:lightgrey,  s:none)
call s:hl("WWDC17Purple",        s:purple,     s:none)
call s:hl("WWDC17Grey",          s:grey,       s:none)
call s:hl("WWDC17VeryLightGrey", s:vlightgrey, s:none)
call s:hl("WWDC17BrightWhite",   s:bwhite,     s:none)

" Custom highlight groups for the main modes
call s:hl("NormalMode",          s:grey,       s:bg,         {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("InsertMode",          s:lemongreen, s:bg,         {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("ReplaceMode",         s:orange,     s:bg,         {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("VisualMode",          s:blue,       s:bg,         {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse'})
call s:hl("CommandMode",         s:magenta,    s:bg,         {'cterm':  'NONE,reverse',      'gui': 'NONE,reverse'})

" NeoVim
call append(line("$"), "if has('nvim')")
call s:hlink("TermCursor", "Cursor", { 'indent': 2})
call s:hl("TermCursorNC", s:bg, s:fg, { 'indent': 2 })
for cc in s:palette
  call append(line("$"), "  let g:terminal_color_".cc[1]."='".cc[0]."'")
endfor
call append(line("$"), "endif")

" Vim
call s:hl("vimCommentTitle",          s:magenta,    s:none)
call s:hl("vimMapModKey",             s:yellow,     s:none)
call s:hl("vimMapMod",                s:yellow,     s:none)
call s:hl("vimBracket",               s:teal,       s:none)
call s:hl("vimNotation",              s:teal,       s:none)
call s:hlink("vimUserFunc",           "Function")

" Git
call s:hl("gitcommitComment",         s:grey,       s:none, {'gui':   'NONE,italic'})

" Markdown
call s:hl("markdownHeadingDelimiter", s:yellow,     s:none)
call s:hl("markdownURL",              s:purple,     s:none)
call s:hl("htmlItalic",               s:fg,         s:none, {'gui':   'NONE,italic'})
call s:hl("htmlBold",                 s:fg,         s:none, {'cterm': 'NONE,bold', 'gui': 'NONE,bold'})
call s:hl("htmlBoldItalic",           s:fg,         s:none, {'cterm': 'NONE,bold', 'gui':   'NONE,bold,italic'})

" JavaScript
call s:hlink("javascriptBraces",      "Delimiter")

" Syntastic
call s:hl("SyntasticErrorSign",       s:red,        s:none)
call s:hl("SyntasticWarningSign",     s:yellow,     s:none)

" Terminal italic
$append
if get(g:, "wwdc17_term_italics", 0)
  hi Comment cterm=italic
  hi Folded cterm=italic
  hi htmlItalic cterm=italic
  hi htmlBoldItalic cterm=NONE,bold,italic
  hi gitcommitComment cterm=italic
endif
.


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Demo :)
silent tabnew
insert

 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●
 ●●●●●●●●●●●●●●●●●●●

.

for col in s:palette
  call s:put((col[1] < 10 ? '0' : '') . col[1] . ' ' . col[0] . ' '
        \ . repeat(
        \          (get(g:, 'wwdc17_high_contrast', 0) && col[1] == 15) ||
        \          (!get(g:, 'wwdc17_high_contrast', 0) && col[1] == 7)
        \          ? ' '
        \          : '▇',
        \       60)
        \ . ' rgb(' . join(s:hex2rgb(col[0]), ', ')  . ')')
endfor

for i in range(2,11)
  for j in range(2,21)
    let k = abs(float2nr(pow(i,j)) % 17)
    if k == 8
      let k = 0
    endif
    execute 'syn match WWDC17Demo'.k '/\%(\%'.i.'l\%'.j.'v\)./'
  endfor
endfor

for i in range(13,13+15)
  if (get(g:, 'wwdc17_high_contrast', 0) && i != 15+13) || (!get(g:, 'wwdc17_high_contrast', 0) && i != 7+13)
    execute 'syn match WWDC17Demo'.(i-13) '/\%'.i.'l.*/'
  endif
endfor

hi! link WWDC17Demo0  WWDC17Black
hi! link WWDC17Demo1  WWDC17Red
hi! link WWDC17Demo2  WWDC17Aqua
hi! link WWDC17Demo3  WWDC17Yellow
hi! link WWDC17Demo4  WWDC17Blue
hi! link WWDC17Demo5  WWDC17Magenta
hi! link WWDC17Demo6  WWDC17Teal
hi! link WWDC17Demo7  WWDC17White
hi! link WWDC17Demo8  WWDC17AshGrey
hi! link WWDC17Demo9  WWDC17Orange
hi! link WWDC17Demo10 WWDC17LemonGreen
hi! link WWDC17Demo11 WWDC17LightGrey
hi! link WWDC17Demo12 WWDC17Purple
hi! link WWDC17Demo13 WWDC17Grey
hi! link WWDC17Demo14 WWDC17VeryLightGrey
hi! link WWDC17Demo15 WWDC17BrightWhite
hi! link WWDC17Demo16 WWDC17Aqua
