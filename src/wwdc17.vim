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

fun! s:hlstring(group, fg, bg, ...) " ... is an optional dictionary of attributes
  return join([
        \ 'hi', a:group,
        \ 'ctermfg=' . a:fg[1],
        \ 'ctermbg=' . a:bg[1],
        \ 'cterm='   . (a:0 > 0 ? get(a:1, 'cterm', 'NONE') : 'NONE'),
        \ 'guifg='   . a:fg[0],
        \ 'guibg='   . a:bg[0],
        \ 'gui='     . (a:0 > 0 ? get(a:1, 'gui', 'NONE') : 'NONE'),
        \ 'guisp='   . (a:0 > 0 ? get(a:1, 'guisp', 'NONE') : 'NONE')
        \ ])
endf

fun! s:hl(group, fg, bg, ...) " ... is an optional dictionary of attributes
  call append(line('$'), repeat(' ', a:0 > 0 ? get(a:1, 'indent', 0) : 0)
        \ . s:hlstring(a:group, a:fg, a:bg, get(a:000, 0, {})))
endf

fun! s:hlink(src, tgt, ...)
  call append(line('$'), repeat(' ', a:0 > 0 ? get(a:1, 'indent', 0) : 0) . 'hi! link '.a:src.' '.a:tgt)
endf

let s:black         = [s:rgb2hex(101, 101, 103), 0]
let s:red           = [s:rgb2hex(232, 80,  63),  1]
let s:green         = [s:rgb2hex(0,   169, 149), 2]
let s:yellow        = [s:rgb2hex(225, 173, 11),  3]
let s:blue          = [s:rgb2hex(58,  93,  111), 4]
let s:magenta       = [s:rgb2hex(219, 45,  69),  5]
let s:cyan          = [s:rgb2hex(31,  174, 208), 6]
let s:white         = [s:rgb2hex(240, 240, 240), 7]
let s:brightblack   = [s:rgb2hex(136, 136, 136), 8]
let s:brightred     = [s:rgb2hex(228, 117, 62),  9]
let s:brightgreen   = [s:rgb2hex(175, 192, 108), 10]
let s:brightyellow  = [s:rgb2hex(235, 184, 34),  11]
let s:brightblue    = [s:rgb2hex(140, 97,  166), 12]
let s:brightmagenta = [s:rgb2hex(235, 49,  75),  13]
let s:brightcyan    = [s:rgb2hex(35,  188, 225), 14]
let s:brightwhite   = [s:rgb2hex(248, 248, 248), 15]
let s:none          = ["NONE", "NONE"]
let s:fg            = s:black
let s:bg            = s:brightwhite

let s:palette = [
      \ s:black,
      \ s:red,
      \ s:green,
      \ s:yellow,
      \ s:blue,
      \ s:magenta,
      \ s:cyan,
      \ s:white,
      \ s:brightblack,
      \ s:brightred,
      \ s:brightgreen,
      \ s:brightyellow,
      \ s:brightblue,
      \ s:brightmagenta,
      \ s:brightcyan,
      \ s:brightwhite
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
call s:hl (   "Normal",       s:fg,          s:none, {'indent': 2})
call s:hl (   "LineNr",       s:brightblack, s:none, {'indent': 2})
call s:hl (   "CursorLineNr", s:brightred,   s:none, {'indent': 2})
call s:hl (   "CursorLine",   s:none,        s:none, {'indent': 2, 'cterm': 'NONE,underline'})
call s:hl (   "Folded",       s:brightblack, s:none, {'indent': 2, 'gui'  : 'NONE,italic'})
call s:put("else")
call s:hl (   "Normal",       s:fg,          s:bg,    {'indent': 2})
call s:hl (   "LineNr",       s:brightblack, s:white, {'indent': 2})
call s:hl (   "CursorLineNr", s:brightred,   s:white, {'indent': 2})
call s:hl (   "CursorLine",   s:none,        s:white, {'indent': 2})
call s:hl (   "Folded",       s:brightblack, s:white, {'indent': 2, 'gui' : 'NONE,italic'})
call s:put("endif")
call s:hl (  "FoldColumn",    s:brightblack, s:none)
call s:put("")
call s:put("let g:wwdc17_palette = [" . join(map(copy(s:palette), {_,c -> "'".c[0]."'"}), ', ') . "]")
call s:put("")

call s:hl("ColorColumn",              s:none,          s:white)
call s:hl("Conceal",                  s:green,         s:none)
call s:hl("Cursor",                   s:none,          s:none,          {'cterm': 'NONE,reverse',         'gui': 'NONE,reverse'})
call s:hlink("lCursor",               "Cursor")
call s:hl("CursorIM",                 s:none,          s:bg)
call s:hl("CursorColumn",             s:none,          s:white)
call s:hl("DiffAdd",                  s:brightgreen,   s:fg,            {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse'})
call s:hl("DiffChange",               s:yellow,        s:bg,            {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse'})
call s:hl("DiffDelete",               s:red,           s:bg,            {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse'})
call s:hl("DiffText",                 s:cyan,          s:bg,            {'cterm':  'NONE,bold,reverse',   'gui': 'NONE,bold,reverse'})
call s:hl("Directory",                s:green,         s:none)
call s:hl("EndOfBuffer",              s:brightred,     s:none)
call s:hl("Error",                    s:red,           s:bg,            {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse'})
call s:hl("ErrorMsg",                 s:red,           s:bg,            {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse'})
call s:hl("IncSearch",                s:yellow,        s:bg,            {'cterm':  'NONE,reverse',        'gui': 'NONE,standout'})
call s:hl("MatchParen",               s:none,          s:none,          {'cterm':  'NONE,bold,underline', 'gui': 'NONE,bold,underline', 'guisp': s:black[0]})
call s:hl("ModeMsg",                  s:fg,            s:none)
call s:hl("MoreMsg",                  s:brightred,     s:none)
call s:hl("NonText",                  s:brightblack,   s:none)
call s:hl("Pmenu",                    s:fg,            s:white)
call s:hl("PmenuSbar",                s:brightred,     s:brightblack)
call s:hl("PmenuSel",                 s:bg,            s:brightred)
call s:hl("PmenuThumb",               s:red,           s:brightred)
call s:hl("Question",                 s:fg,            s:none)
call s:hlink("QuickFixLine",          "Search")
call s:hl("Search",                   s:yellow,        s:bg,            {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse'})
call s:hl("SignColumn",               s:brightred,     s:none)
call s:hl("SpecialKey",               s:brightred,     s:none)
call s:hl("SpellBad",                 s:magenta,       s:none,          {'cterm':  'NONE,underline',      'gui': 'NONE,undercurl',      'guisp':  s:brightblack[0]})
call s:hl("SpellCap",                 s:magenta,       s:none,          {'cterm':  'NONE,underline',      'gui': 'NONE,undercurl',      'guisp':  s:brightblack[0]})
call s:hl("SpellLocal",               s:magenta,       s:none,          {'cterm':  'NONE,underline',      'gui': 'NONE,undercurl',      'guisp':  s:brightblack[0]})
call s:hl("SpellRare",                s:magenta,       s:none,          {'cterm':  'NONE,underline',      'gui': 'NONE,undercurl',      'guisp':  s:brightblack[0]})

call s:hl("Title",                    s:brightred,     s:none,          {'cterm':  'NONE,bold',           'gui': 'NONE,bold'})
call s:hl("Visual",                   s:blue,          s:bg,            {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse'})
call s:hl("VisualNOS",                s:bg,            s:blue)
call s:hl("WarningMsg",               s:red,           s:none)

call s:put("let s:fc = abs(get(g:, 'wwdc17_frame_color', 10)) % 16")
call s:put("if s:fc == 0")
call s:hl("StatusLine",               s:black,         s:brightwhite,   {'cterm':  'NONE,reverse,bold',   'gui': 'NONE,reverse,bold',   'indent': 2})
call s:hl("StatusLineNC",             s:black,         s:white,         {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:white,         s:black,         {'indent': 2})
call s:hl("TabLineFill",              s:brightwhite,   s:black,         {'indent': 2})
call s:hl("TabLineSel",               s:brightwhite,   s:black,         {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:hl("VertSplit",                s:black,         s:black,         {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:magenta,       {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:put("elseif s:fc == 1")
call s:hl("StatusLine",               s:red,           s:brightwhite,   {'cterm':  'NONE,reverse,bold',   'gui': 'NONE,reverse,bold',   'indent': 2})
call s:hl("StatusLineNC",             s:red,           s:white,         {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:white,         s:red,           {'indent': 2})
call s:hl("TabLineFill",              s:brightwhite,   s:red,           {'indent': 2})
call s:hl("TabLineSel",               s:brightwhite,   s:brightred,     {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:hl("VertSplit",                s:red,           s:red,           {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:brightgreen,   {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:put("elseif s:fc == 2")
call s:hl("StatusLine",               s:green,         s:brightwhite,   {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("StatusLineNC",             s:green,         s:blue,          {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:blue,          s:green,         {'indent': 2})
call s:hl("TabLineFill",              s:brightwhite,   s:green,         {'indent': 2})
call s:hl("TabLineSel",               s:brightwhite,   s:green,         {'indent': 2})
call s:hl("VertSplit",                s:green,         s:green,         {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:magenta,       {'indent': 2})
call s:put("elseif s:fc == 3")
call s:hl("StatusLine",               s:yellow,        s:brightwhite,   {'cterm':  'NONE,reverse,bold',   'gui': 'NONE,reverse,bold',   'indent': 2})
call s:hl("StatusLineNC",             s:yellow,        s:blue,          {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:blue,          s:yellow,        {'indent': 2})
call s:hl("TabLineFill",              s:brightwhite,   s:yellow,        {'indent': 2})
call s:hl("TabLineSel",               s:brightwhite,   s:yellow,        {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:hl("VertSplit",                s:yellow,        s:yellow,        {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:magenta,       {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:put("elseif s:fc == 4")
call s:hl("StatusLine",               s:blue,          s:brightwhite,   {'cterm':  'NONE,reverse,bold',   'gui': 'NONE,reverse,bold',   'indent': 2})
call s:hl("StatusLineNC",             s:blue,          s:brightwhite,   {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:brightwhite,   s:blue,          {'indent': 2})
call s:hl("TabLineFill",              s:brightwhite,   s:blue,          {'indent': 2})
call s:hl("TabLineSel",               s:brightwhite,   s:blue,          {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:hl("VertSplit",                s:blue,          s:blue,          {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:magenta,       {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:put("elseif s:fc == 5")
call s:hl("StatusLine",               s:magenta,       s:brightwhite,   {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("StatusLineNC",             s:magenta,       s:yellow,        {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:yellow,        s:magenta,       {'indent': 2})
call s:hl("TabLineFill",              s:brightwhite,   s:magenta,       {'indent': 2})
call s:hl("TabLineSel",               s:brightwhite,   s:magenta,       {'indent': 2})
call s:hl("VertSplit",                s:magenta,       s:magenta,       {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:yellow,        {'indent': 2})
call s:put("elseif s:fc == 6")
call s:hl("StatusLine",               s:cyan,          s:brightwhite,   {'cterm':  'NONE,reverse,bold',   'gui': 'NONE,reverse,bold',   'indent': 2})
call s:hl("StatusLineNC",             s:cyan,          s:white,         {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:white,         s:cyan,          {'indent': 2})
call s:hl("TabLineFill",              s:brightwhite,   s:cyan,          {'indent': 2})
call s:hl("TabLineSel",               s:brightwhite,   s:cyan,          {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:hl("VertSplit",                s:cyan,          s:cyan,          {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:magenta,       {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:put("elseif s:fc == 7")
call s:hl("StatusLine",               s:white,         s:black,         {'cterm':  'NONE,reverse,bold',   'gui': 'NONE,reverse,bold',   'indent': 2})
call s:hl("StatusLineNC",             s:white,         s:brightblack,   {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:brightblack,   s:white,         {'indent': 2})
call s:hl("TabLineFill",              s:black,         s:white,         {'indent': 2})
call s:hl("TabLineSel",               s:black,         s:white,         {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:hl("VertSplit",                s:white,         s:white,         {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:magenta,       {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:put("elseif s:fc == 8")
call s:hl("StatusLine",               s:brightblack,   s:brightwhite,   {'cterm':  'NONE,reverse,bold',   'gui': 'NONE,reverse,bold',   'indent': 2})
call s:hl("StatusLineNC",             s:brightblack,   s:white,         {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:white,         s:brightblack,   {'indent': 2})
call s:hl("TabLineFill",              s:brightwhite,   s:brightblack,   {'indent': 2})
call s:hl("TabLineSel",               s:brightwhite,   s:brightblack,   {'indent': 2})
call s:hl("VertSplit",                s:brightblack,   s:brightblack,   {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:magenta,       {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:put("elseif s:fc == 9")
call s:hl("StatusLine",               s:brightred,     s:brightwhite,   {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("StatusLineNC",             s:brightred,     s:blue,          {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:blue,          s:brightred,     {'indent': 2})
call s:hl("TabLineFill",              s:brightwhite,   s:brightred,     {'indent': 2})
call s:hl("TabLineSel",               s:brightwhite,   s:brightred,     {'indent': 2})
call s:hl("VertSplit",                s:brightred,     s:brightred,     {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:brightgreen,   {'indent': 2})
call s:put("elseif s:fc == 10")
call s:hl("StatusLine",               s:brightgreen,   s:brightwhite,   {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("StatusLineNC",             s:brightgreen,   s:brightblack,   {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:brightblack,   s:brightgreen,   {'indent': 2})
call s:hl("TabLineFill",              s:brightwhite,   s:brightgreen,   {'indent': 2})
call s:hl("TabLineSel",               s:brightwhite,   s:brightgreen,   {'indent': 2})
call s:hl("VertSplit",                s:brightgreen,   s:brightgreen,   {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:magenta,       {'indent': 2})
call s:put("elseif s:fc == 11")
call s:hl("StatusLine",               s:brightyellow,  s:brightwhite,   {'cterm':  'NONE,reverse,bold',   'gui': 'NONE,reverse,bold',   'indent': 2})
call s:hl("StatusLineNC",             s:brightyellow,  s:blue,          {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:blue,          s:brightyellow,  {'indent': 2})
call s:hl("TabLineFill",              s:brightwhite,   s:brightyellow,  {'indent': 2})
call s:hl("TabLineSel",               s:brightwhite,   s:brightyellow,  {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:hl("VertSplit",                s:brightyellow,  s:brightyellow,  {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:magenta,       {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:put("elseif s:fc == 12")
call s:hl("StatusLine",               s:brightblue,    s:brightwhite,   {'cterm':  'NONE,reverse,bold',   'gui': 'NONE,reverse,bold',   'indent': 2})
call s:hl("StatusLineNC",             s:brightblue,    s:white,         {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:white,         s:brightblue,    {'indent': 2})
call s:hl("TabLineFill",              s:brightwhite,   s:brightblue,    {'indent': 2})
call s:hl("TabLineSel",               s:brightwhite,   s:brightblue,    {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:hl("VertSplit",                s:brightblue,    s:brightblue,    {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:magenta,       {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:put("elseif s:fc == 13")
call s:hl("StatusLine",               s:brightmagenta, s:brightwhite,   {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("StatusLineNC",             s:brightmagenta, s:yellow,        {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:yellow,        s:brightmagenta, {'indent': 2})
call s:hl("TabLineFill",              s:brightwhite,   s:brightmagenta, {'indent': 2})
call s:hl("TabLineSel",               s:brightwhite,   s:brightmagenta, {'indent': 2})
call s:hl("VertSplit",                s:brightmagenta, s:brightmagenta, {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:yellow,        {'indent': 2})
call s:put("elseif s:fc == 14")
call s:hl("StatusLine",               s:brightcyan,    s:brightwhite,   {'cterm':  'NONE,reverse,bold',   'gui': 'NONE,reverse,bold',   'indent': 2})
call s:hl("StatusLineNC",             s:brightcyan,    s:white,         {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:white,         s:brightcyan,    {'indent': 2})
call s:hl("TabLineFill",              s:brightwhite,   s:brightcyan,    {'indent': 2})
call s:hl("TabLineSel",               s:brightwhite,   s:brightcyan,    {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:hl("VertSplit",                s:brightcyan,    s:brightcyan,    {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:magenta,       {'cterm':  'NONE,bold',           'gui': 'NONE,bold',           'indent': 2})
call s:put("elseif s:fc == 15")
call s:hl("StatusLine",               s:brightwhite,   s:black,         {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("StatusLineNC",             s:brightwhite,   s:brightblack,   {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse',        'indent': 2})
call s:hl("TabLine",                  s:brightblack,   s:brightwhite,   {'indent': 2})
call s:hl("TabLineFill",              s:black,         s:brightwhite,   {'indent': 2})
call s:hl("TabLineSel",               s:black,         s:brightwhite,   {'indent': 2})
call s:hl("VertSplit",                s:brightwhite,   s:brightwhite,   {'indent': 2})
call s:hl("WildMenu",                 s:brightwhite,   s:magenta,       {'indent': 2})
call s:put("endif")
call s:put("unlet s:fc")

call s:hlink("StatusLineTerm",        "StatusLine")
call s:hlink("StatusLineTermNC",      "StatusLineNC")

call s:hl("Boolean",                  s:brightgreen,   s:none)
call s:hl("Character",                s:magenta,       s:none)
call s:hl("Comment",                  s:brightblack,   s:none,          {'gui':    'NONE,italic'})
call s:hl("Constant",                 s:green,         s:none)
call s:hl("Debug",                    s:magenta,       s:none)
call s:hl("Delimiter",                s:blue,          s:none)
call s:hl("Float",                    s:brightgreen,   s:none)
call s:hl("Function",                 s:green,         s:none)
call s:hl("Identifier",               s:blue,          s:none)
call s:hl("Ignore",                   s:bg,            s:none)
call s:hl("Include",                  s:brightblue,    s:none)
call s:hl("Keyword",                  s:cyan,          s:none)
call s:hl("Label",                    s:green,         s:none)
call s:hl("Number",                   s:green,         s:none)
call s:hl("Operator",                 s:cyan,          s:none)
call s:hl("PreProc",                  s:red,           s:none)
call s:hl("Special",                  s:red,           s:none)
call s:hl("SpecialChar",              s:magenta,       s:none)
call s:hl("SpecialComment",           s:magenta,       s:none)
call s:hl("Statement",                s:cyan,          s:none)
call s:hl("StorageClass",             s:cyan,          s:none)
call s:hl("String",                   s:brightred,     s:none)
call s:hl("Structure",                s:red,           s:none)
call s:hl("Todo",                     s:magenta,       s:none,          {'cterm':  'NONE,bold',           'gui': 'NONE,bold'})
call s:hl("Type",                     s:brightblue,    s:none)
call s:hl("Underlined",               s:none,          s:none,          {'cterm':  'NONE,underline',      'gui': 'NONE,underline'})

" Custom highlight groups for the main modes
call s:hl("NormalMode",               s:brightblack,   s:bg,            {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse'})
call s:hl("InsertMode",               s:brightgreen,   s:bg,            {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse'})
call s:hl("ReplaceMode",              s:brightred,     s:bg,            {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse'})
call s:hl("VisualMode",               s:blue,          s:bg,            {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse'})
call s:hl("CommandMode",              s:magenta,       s:bg,            {'cterm':  'NONE,reverse',        'gui': 'NONE,reverse'})

" NeoVim
call s:put("if has('nvim')")
call s:hlink("TermCursor", "Cursor", { 'indent': 2})
call s:hl("TermCursorNC",             s:bg,            s:fg,            { 'indent': 2 })
for cc in s:palette
  call s:put("  let g:terminal_color_".cc[1]."='".cc[0]."'")
endfor
call s:put("endif")

" Vim
call s:hl("vimCommentTitle",          s:magenta,       s:none)
call s:hl("vimMapModKey",             s:yellow,        s:none)
call s:hl("vimMapMod",                s:yellow,        s:none)
call s:hl("vimBracket",               s:cyan,          s:none)
call s:hl("vimNotation",              s:cyan,          s:none)
call s:hlink("vimUserFunc",           "Function")

" Git
call s:hl("gitcommitComment",         s:brightblack,   s:none,          {'gui':   'NONE,italic'})

" Markdown
call s:hl("markdownHeadingDelimiter", s:yellow,        s:none)
call s:hl("markdownURL",              s:brightblue,    s:none)
call s:hl("htmlItalic",               s:fg,            s:none,          {'gui':   'NONE,italic'})
call s:hl("htmlBold",                 s:fg,            s:none,          {'cterm': 'NONE,bold',            'gui': 'NONE,bold'})
call s:hl("htmlBoldItalic",           s:fg,            s:none,          {'cterm': 'NONE,bold',            'gui': 'NONE,bold,italic'})

" JavaScript
call s:hlink("javascriptBraces", "Delimiter")

" Syntastic
call s:hl("SyntasticErrorSign",  s:red,         s:none)
call s:hl("SyntasticWarningSign",s:yellow,      s:none)

" Terminal italic
$append
if get(g:, "wwdc17_term_italics", 1)
  hi Comment cterm=italic
  hi Folded cterm=italic
  hi htmlItalic cterm=italic
  hi htmlBoldItalic cterm=NONE,bold,italic
  hi gitcommitComment cterm=italic
endif
.

if !get(g:, 'wwdc17_demo', 0)
  finish
endif

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
        \ . repeat(col[1] == 15 ? ' ' : '▇', 60)
        \ . ' rgb(' . join(s:hex2rgb(col[0]), ', ')  . ')')
endfor

for i in range(2,11)
  for j in range(2,21)
    let k = abs(float2nr(pow(i,j)) % 17) " Incredibly clever pseudo-random generator ;)
    execute 'syn match WWDC17Demo'.k '/\%(\%'.i.'l\%'.j.'v\)./'
  endfor
endfor

for i in range(13,13+14)
  execute 'syn match WWDC17Demo'.(i-13) '/\%'.i.'l.*/'
endfor
syn match WWDC17Demo0 /\%28l.*/

execute s:hlstring("WWDC17Demo0",  s:black,         s:none)
execute s:hlstring("WWDC17Demo1",  s:red,           s:none)
execute s:hlstring("WWDC17Demo2",  s:green,         s:none)
execute s:hlstring("WWDC17Demo3",  s:yellow,        s:none)
execute s:hlstring("WWDC17Demo4",  s:blue,          s:none)
execute s:hlstring("WWDC17Demo5",  s:magenta,       s:none)
execute s:hlstring("WWDC17Demo6",  s:cyan,          s:none)
execute s:hlstring("WWDC17Demo7",  s:white,         s:none)
execute s:hlstring("WWDC17Demo8",  s:brightblack,   s:none)
execute s:hlstring("WWDC17Demo9",  s:brightred,     s:none)
execute s:hlstring("WWDC17Demo10", s:brightgreen,   s:none)
execute s:hlstring("WWDC17Demo11", s:brightyellow,  s:none)
execute s:hlstring("WWDC17Demo12", s:brightblue,    s:none)
execute s:hlstring("WWDC17Demo13", s:brightmagenta, s:none)
execute s:hlstring("WWDC17Demo14", s:brightcyan,    s:none)
execute s:hlstring("WWDC17Demo15", s:brightwhite,   s:none)
execute s:hlstring("WWDC17Demo16", s:blue,          s:none)
