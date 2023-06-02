" Name:         WWDC17
" Description:  Colorful light color scheme for Vim inspired by Apple's WWDC17 page
" Authors:      Lifepillar <lifepillar@lifepillar.me>
" URLs:         https://github.com/lifepillar/vim-wwdc17-theme
" License:      MIT
" Last Updated: Fri Jun  2 12:24:12 2023

" Generated by Colortemplate v3.0.0-alpha0

set background=light

hi clear
let g:colors_name = 'wwdc17'

if has('nvim')
  let g:terminal_color_0  = '#5f5f61'
  let g:terminal_color_1  = '#e8503f'
  let g:terminal_color_2  = '#00998c'
  let g:terminal_color_3  = '#d87900'
  let g:terminal_color_4  = '#527f8f'
  let g:terminal_color_5  = '#db2d45'
  let g:terminal_color_6  = '#159ccc'
  let g:terminal_color_7  = '#f0f0f0'
  let g:terminal_color_8  = '#888888'
  let g:terminal_color_9  = '#d87900'
  let g:terminal_color_10 = '#abb96e'
  let g:terminal_color_11 = '#e1ad0b'
  let g:terminal_color_12 = '#8c61a6'
  let g:terminal_color_13 = '#eb314b'
  let g:terminal_color_14 = '#23bce1'
  let g:terminal_color_15 = '#fafafa'
endif

let s:frame = abs(get(g:, 'wwdc17_frame_color', 10)) % 16
let s:italic = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')
let s:transp_bg = get(g:, 'wwdc17_transp_bg', 0)
let s:transp_italic = (s:italic ? 1 : 0) + 2 * s:transp_bg

let g:terminal_ansi_colors = ['#5f5f61', '#e8503f', '#00998c', '#d87900', '#527f8f', '#db2d45', '#159ccc', '#f0f0f0', '#888888', '#d87900', '#abb96e', '#e1ad0b', '#8c61a6', '#eb314b', '#23bce1', '#fafafa']

hi! link Conditional Statement
hi! link CurSearch Search
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi! link Define PreProc
hi! link Exception Statement
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link Macro PreProc
hi! link PopupNotification WarningMsg
hi! link PopupSelected PmenuSel
hi! link PreCondit PreProc
hi! link QuickFixLine Search
hi! link Repeat Statement
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link Tag Special
hi! link TermCursor Cursor
hi! link Typedef Type
hi! link debugBreakpoint SignColumn
hi! link debugPC SignColumn
hi! link lCursor Cursor

hi Normal guifg=#5f5f61 guibg=#fafafa guisp=NONE gui=NONE
hi Boolean guifg=#abb96e guibg=NONE guisp=NONE gui=NONE
hi Character guifg=#db2d45 guibg=NONE guisp=NONE gui=NONE
hi ColorColumn guifg=NONE guibg=#f0f0f0 guisp=NONE gui=NONE
hi CommandMode guifg=#db2d45 guibg=#fafafa guisp=NONE gui=reverse
hi Comment guifg=#888888 guibg=NONE guisp=NONE gui=italic
hi Conceal guifg=#00998c guibg=NONE guisp=NONE gui=NONE
hi Constant guifg=#00998c guibg=NONE guisp=NONE gui=NONE
hi Cursor guifg=NONE guibg=NONE guisp=NONE gui=reverse
hi CursorColumn guifg=NONE guibg=#f0f0f0 guisp=NONE gui=NONE
hi CursorIM guifg=NONE guibg=#fafafa guisp=NONE gui=NONE
hi CursorLine guifg=NONE guibg=#f0f0f0 guisp=NONE gui=NONE
hi CursorLineNr guifg=#d87900 guibg=#f0f0f0 guisp=NONE gui=NONE
hi Debug guifg=#db2d45 guibg=NONE guisp=NONE gui=NONE
hi Delimiter guifg=#527f8f guibg=NONE guisp=NONE gui=NONE
hi DiffAdd guifg=#abb96e guibg=#5f5f61 guisp=NONE gui=reverse
hi DiffChange guifg=#d87900 guibg=#fafafa guisp=NONE gui=reverse
hi DiffDelete guifg=#e8503f guibg=#fafafa guisp=NONE gui=reverse
hi DiffText guifg=#159ccc guibg=#fafafa guisp=NONE gui=bold,reverse
hi Directory guifg=#00998c guibg=NONE guisp=NONE gui=NONE
hi EndOfBuffer guifg=#d87900 guibg=NONE guisp=NONE gui=NONE
hi Error guifg=#e8503f guibg=#fafafa guisp=NONE gui=reverse
hi ErrorMsg guifg=#e8503f guibg=#fafafa guisp=NONE gui=reverse
hi Float guifg=#abb96e guibg=NONE guisp=NONE gui=NONE
hi FoldColumn guifg=#888888 guibg=#f0f0f0 guisp=NONE gui=NONE
hi Folded guifg=#888888 guibg=#f0f0f0 guisp=NONE gui=italic
hi Function guifg=#00998c guibg=NONE guisp=NONE gui=NONE
hi Identifier guifg=#527f8f guibg=NONE guisp=NONE gui=NONE
hi Ignore guifg=#d87900 guibg=NONE guisp=NONE gui=NONE
hi IncSearch guifg=#d87900 guibg=#fafafa guisp=NONE gui=standout
hi Include guifg=#8c61a6 guibg=NONE guisp=NONE gui=NONE
hi InsertMode guifg=#abb96e guibg=#fafafa guisp=NONE gui=reverse
hi Keyword guifg=#159ccc guibg=NONE guisp=NONE gui=NONE
hi Label guifg=#00998c guibg=NONE guisp=NONE gui=NONE
hi LineNr guifg=#888888 guibg=#f0f0f0 guisp=NONE gui=NONE
hi MatchParen guifg=NONE guibg=NONE guisp=#5f5f61 gui=bold,underline
hi ModeMsg guifg=#5f5f61 guibg=NONE guisp=NONE gui=NONE
hi MoreMsg guifg=#d87900 guibg=NONE guisp=NONE gui=NONE
hi NonText guifg=#888888 guibg=NONE guisp=NONE gui=NONE
hi NormalMode guifg=#888888 guibg=#fafafa guisp=NONE gui=reverse
hi Number guifg=#00998c guibg=NONE guisp=NONE gui=NONE
hi Operator guifg=#159ccc guibg=NONE guisp=NONE gui=NONE
hi Pmenu guifg=#5f5f61 guibg=#f0f0f0 guisp=NONE gui=NONE
hi PmenuSbar guifg=#d87900 guibg=#888888 guisp=NONE gui=NONE
hi PmenuSel guifg=#fafafa guibg=#d87900 guisp=NONE gui=NONE
hi PmenuThumb guifg=#e8503f guibg=#d87900 guisp=NONE gui=NONE
hi PreProc guifg=#e8503f guibg=NONE guisp=NONE gui=NONE
hi Question guifg=#5f5f61 guibg=NONE guisp=NONE gui=NONE
hi ReplaceMode guifg=#d87900 guibg=#fafafa guisp=NONE gui=reverse
hi Search guifg=#e1ad0b guibg=#fafafa guisp=NONE gui=reverse
hi SignColumn guifg=#d87900 guibg=NONE guisp=NONE gui=NONE
hi Special guifg=#e8503f guibg=NONE guisp=NONE gui=NONE
hi SpecialChar guifg=#db2d45 guibg=NONE guisp=NONE gui=NONE
hi SpecialComment guifg=#db2d45 guibg=NONE guisp=NONE gui=NONE
hi SpecialKey guifg=#d87900 guibg=NONE guisp=NONE gui=NONE
hi SpellBad guifg=#db2d45 guibg=NONE guisp=#888888 gui=undercurl
hi SpellCap guifg=#db2d45 guibg=NONE guisp=#888888 gui=undercurl
hi SpellLocal guifg=#db2d45 guibg=NONE guisp=#888888 gui=undercurl
hi SpellRare guifg=#db2d45 guibg=NONE guisp=#888888 gui=undercurl
hi Statement guifg=#159ccc guibg=NONE guisp=NONE gui=NONE
hi StatusLine guifg=#abb96e guibg=#fafafa guisp=NONE gui=bold,reverse
hi StatusLineNC guifg=#abb96e guibg=#f0f0f0 guisp=NONE gui=reverse
hi StorageClass guifg=#159ccc guibg=NONE guisp=NONE gui=NONE
hi String guifg=#d87900 guibg=NONE guisp=NONE gui=NONE
hi Structure guifg=#e8503f guibg=NONE guisp=NONE gui=NONE
hi TabLine guifg=#f0f0f0 guibg=#abb96e guisp=NONE gui=NONE
hi TabLineFill guifg=#fafafa guibg=#abb96e guisp=NONE gui=NONE
hi TabLineSel guifg=#fafafa guibg=#abb96e guisp=NONE gui=bold
hi TermCursorNC guifg=#fafafa guibg=#5f5f61 guisp=NONE gui=NONE
hi Terminal guifg=#5f5f61 guibg=#fafafa guisp=NONE gui=NONE
hi Title guifg=#d87900 guibg=NONE guisp=NONE gui=bold
hi Todo guifg=#db2d45 guibg=NONE guisp=NONE gui=bold
hi ToolbarButton guifg=#5f5f61 guibg=#f0f0f0 guisp=NONE gui=bold
hi ToolbarLine guifg=#888888 guibg=#f0f0f0 guisp=NONE gui=NONE
hi Type guifg=#8c61a6 guibg=NONE guisp=NONE gui=NONE
hi Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline
hi VertSplit guifg=#f0f0f0 guibg=#abb96e guisp=NONE gui=NONE
hi Visual guifg=#527f8f guibg=#fafafa guisp=NONE gui=reverse
hi VisualMode guifg=#527f8f guibg=#fafafa guisp=NONE gui=reverse
hi VisualNOS guifg=#fafafa guibg=#527f8f guisp=NONE gui=NONE
hi WarningMsg guifg=#e8503f guibg=NONE guisp=NONE gui=NONE
hi WildMenu guifg=#fafafa guibg=#db2d45 guisp=NONE gui=bold

if has('gui_running')
  if s:frame == 0
    hi StatusLine guifg=#5f5f61 guibg=#fafafa guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#5f5f61 guibg=#f0f0f0 guisp=NONE gui=reverse
    hi TabLine guifg=#f0f0f0 guibg=#5f5f61 guisp=NONE gui=NONE
    hi TabLineFill guifg=#fafafa guibg=#5f5f61 guisp=NONE gui=NONE
    hi TabLineSel guifg=#fafafa guibg=#5f5f61 guisp=NONE gui=bold
    hi VertSplit guifg=#f0f0f0 guibg=#5f5f61 guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#db2d45 guisp=NONE gui=bold
  elseif s:frame == 1
    hi StatusLine guifg=#e8503f guibg=#fafafa guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#e8503f guibg=#f0f0f0 guisp=NONE gui=reverse
    hi TabLine guifg=#f0f0f0 guibg=#e8503f guisp=NONE gui=NONE
    hi TabLineFill guifg=#fafafa guibg=#e8503f guisp=NONE gui=NONE
    hi TabLineSel guifg=#fafafa guibg=#d87900 guisp=NONE gui=bold
    hi VertSplit guifg=#f0f0f0 guibg=#e8503f guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#abb96e guisp=NONE gui=bold
  elseif s:frame == 11
    hi StatusLine guifg=#e1ad0b guibg=#fafafa guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#e1ad0b guibg=#f0f0f0 guisp=NONE gui=reverse
    hi TabLine guifg=#f0f0f0 guibg=#e1ad0b guisp=NONE gui=NONE
    hi TabLineFill guifg=#fafafa guibg=#e1ad0b guisp=NONE gui=NONE
    hi TabLineSel guifg=#fafafa guibg=#e1ad0b guisp=NONE gui=bold
    hi VertSplit guifg=#f0f0f0 guibg=#e1ad0b guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#db2d45 guisp=NONE gui=bold
  elseif s:frame == 12
    hi StatusLine guifg=#8c61a6 guibg=#fafafa guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#8c61a6 guibg=#f0f0f0 guisp=NONE gui=reverse
    hi TabLine guifg=#f0f0f0 guibg=#8c61a6 guisp=NONE gui=NONE
    hi TabLineFill guifg=#fafafa guibg=#8c61a6 guisp=NONE gui=NONE
    hi TabLineSel guifg=#fafafa guibg=#8c61a6 guisp=NONE gui=bold
    hi VertSplit guifg=#f0f0f0 guibg=#8c61a6 guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#db2d45 guisp=NONE gui=bold
  elseif s:frame == 13
    hi StatusLine guifg=#eb314b guibg=#fafafa guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#eb314b guibg=#f0f0f0 guisp=NONE gui=reverse
    hi TabLine guifg=#f0f0f0 guibg=#eb314b guisp=NONE gui=NONE
    hi TabLineFill guifg=#f0f0f0 guibg=#eb314b guisp=NONE gui=NONE
    hi TabLineSel guifg=#fafafa guibg=#eb314b guisp=NONE gui=bold
    hi VertSplit guifg=#f0f0f0 guibg=#eb314b guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#d87900 guisp=NONE gui=NONE
  elseif s:frame == 14
    hi StatusLine guifg=#23bce1 guibg=#fafafa guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#23bce1 guibg=#f0f0f0 guisp=NONE gui=reverse
    hi TabLine guifg=#f0f0f0 guibg=#23bce1 guisp=NONE gui=NONE
    hi TabLineFill guifg=#fafafa guibg=#23bce1 guisp=NONE gui=NONE
    hi TabLineSel guifg=#fafafa guibg=#23bce1 guisp=NONE gui=bold
    hi VertSplit guifg=#f0f0f0 guibg=#23bce1 guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#db2d45 guisp=NONE gui=bold
  elseif s:frame == 15
    hi StatusLine guifg=#fafafa guibg=#5f5f61 guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#fafafa guibg=#888888 guisp=NONE gui=reverse
    hi TabLine guifg=#888888 guibg=#fafafa guisp=NONE gui=NONE
    hi TabLineFill guifg=#888888 guibg=#fafafa guisp=NONE gui=NONE
    hi TabLineSel guifg=#5f5f61 guibg=#fafafa guisp=NONE gui=bold
    hi VertSplit guifg=#888888 guibg=#fafafa guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#888888 guisp=NONE gui=NONE
  elseif s:frame == 2
    hi StatusLine guifg=#00998c guibg=#fafafa guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#00998c guibg=#f0f0f0 guisp=NONE gui=reverse
    hi TabLine guifg=#f0f0f0 guibg=#00998c guisp=NONE gui=NONE
    hi TabLineFill guifg=#fafafa guibg=#00998c guisp=NONE gui=NONE
    hi TabLineSel guifg=#fafafa guibg=#00998c guisp=NONE gui=bold
    hi VertSplit guifg=#f0f0f0 guibg=#00998c guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#db2d45 guisp=NONE gui=bold
  elseif s:frame == 3
    hi StatusLine guifg=#d87900 guibg=#fafafa guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#d87900 guibg=#f0f0f0 guisp=NONE gui=reverse
    hi TabLine guifg=#f0f0f0 guibg=#d87900 guisp=NONE gui=NONE
    hi TabLineFill guifg=#fafafa guibg=#d87900 guisp=NONE gui=NONE
    hi TabLineSel guifg=#fafafa guibg=#d87900 guisp=NONE gui=bold
    hi VertSplit guifg=#f0f0f0 guibg=#d87900 guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#db2d45 guisp=NONE gui=bold
  elseif s:frame == 4
    hi StatusLine guifg=#527f8f guibg=#fafafa guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#527f8f guibg=#f0f0f0 guisp=NONE gui=reverse
    hi TabLine guifg=#fafafa guibg=#527f8f guisp=NONE gui=NONE
    hi TabLineFill guifg=#fafafa guibg=#527f8f guisp=NONE gui=NONE
    hi TabLineSel guifg=#fafafa guibg=#527f8f guisp=NONE gui=bold
    hi VertSplit guifg=#f0f0f0 guibg=#527f8f guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#db2d45 guisp=NONE gui=bold
  elseif s:frame == 5
    hi StatusLine guifg=#db2d45 guibg=#fafafa guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#db2d45 guibg=#f0f0f0 guisp=NONE gui=reverse
    hi TabLine guifg=#f0f0f0 guibg=#db2d45 guisp=NONE gui=NONE
    hi TabLineFill guifg=#f0f0f0 guibg=#db2d45 guisp=NONE gui=NONE
    hi TabLineSel guifg=#fafafa guibg=#db2d45 guisp=NONE gui=bold
    hi VertSplit guifg=#f0f0f0 guibg=#db2d45 guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#d87900 guisp=NONE gui=NONE
  elseif s:frame == 6
    hi StatusLine guifg=#159ccc guibg=#fafafa guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#159ccc guibg=#f0f0f0 guisp=NONE gui=reverse
    hi TabLine guifg=#f0f0f0 guibg=#159ccc guisp=NONE gui=NONE
    hi TabLineFill guifg=#fafafa guibg=#159ccc guisp=NONE gui=NONE
    hi TabLineSel guifg=#fafafa guibg=#159ccc guisp=NONE gui=bold
    hi VertSplit guifg=#f0f0f0 guibg=#159ccc guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#db2d45 guisp=NONE gui=bold
  elseif s:frame == 7
    hi StatusLine guifg=#f0f0f0 guibg=#5f5f61 guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#f0f0f0 guibg=#888888 guisp=NONE gui=reverse
    hi TabLine guifg=#888888 guibg=#f0f0f0 guisp=NONE gui=NONE
    hi TabLineFill guifg=#5f5f61 guibg=#f0f0f0 guisp=NONE gui=NONE
    hi TabLineSel guifg=#5f5f61 guibg=#f0f0f0 guisp=NONE gui=bold
    hi VertSplit guifg=#888888 guibg=#f0f0f0 guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#db2d45 guisp=NONE gui=bold
  elseif s:frame == 8
    hi StatusLine guifg=#888888 guibg=#fafafa guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#888888 guibg=#f0f0f0 guisp=NONE gui=reverse
    hi TabLine guifg=#f0f0f0 guibg=#888888 guisp=NONE gui=NONE
    hi TabLineFill guifg=#fafafa guibg=#888888 guisp=NONE gui=NONE
    hi TabLineSel guifg=#fafafa guibg=#888888 guisp=NONE gui=bold
    hi VertSplit guifg=#f0f0f0 guibg=#888888 guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#db2d45 guisp=NONE gui=bold
  elseif s:frame == 9
    hi StatusLine guifg=#d87900 guibg=#fafafa guisp=NONE gui=bold,reverse
    hi StatusLineNC guifg=#d87900 guibg=#f0f0f0 guisp=NONE gui=reverse
    hi TabLine guifg=#f0f0f0 guibg=#d87900 guisp=NONE gui=NONE
    hi TabLineFill guifg=#fafafa guibg=#d87900 guisp=NONE gui=NONE
    hi TabLineSel guifg=#fafafa guibg=#d87900 guisp=NONE gui=bold
    hi VertSplit guifg=#f0f0f0 guibg=#d87900 guisp=NONE gui=NONE
    hi WildMenu guifg=#fafafa guibg=#abb96e guisp=NONE gui=bold
  endif
endif

if str2nr(&t_Co) >= 256
  hi Normal ctermfg=59 ctermbg=231 cterm=NONE
  hi Boolean ctermfg=143 ctermbg=NONE cterm=NONE
  hi Character ctermfg=197 ctermbg=NONE cterm=NONE
  hi ColorColumn ctermfg=NONE ctermbg=255 cterm=NONE
  hi CommandMode ctermfg=197 ctermbg=231 cterm=reverse
  hi Comment ctermfg=102 ctermbg=NONE cterm=italic
  hi Conceal ctermfg=30 ctermbg=NONE cterm=NONE
  hi Constant ctermfg=30 ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
  hi CursorColumn ctermfg=NONE ctermbg=255 cterm=NONE
  hi CursorIM ctermfg=NONE ctermbg=231 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=255 cterm=NONE
  hi CursorLineNr ctermfg=172 ctermbg=255 cterm=NONE
  hi Debug ctermfg=197 ctermbg=NONE cterm=NONE
  hi Delimiter ctermfg=66 ctermbg=NONE cterm=NONE
  hi DiffAdd ctermfg=143 ctermbg=59 cterm=reverse
  hi DiffChange ctermfg=172 ctermbg=231 cterm=reverse
  hi DiffDelete ctermfg=167 ctermbg=231 cterm=reverse
  hi DiffText ctermfg=74 ctermbg=231 cterm=bold,reverse
  hi Directory ctermfg=30 ctermbg=NONE cterm=NONE
  hi EndOfBuffer ctermfg=172 ctermbg=NONE cterm=NONE
  hi Error ctermfg=167 ctermbg=231 cterm=reverse
  hi ErrorMsg ctermfg=167 ctermbg=231 cterm=reverse
  hi Float ctermfg=143 ctermbg=NONE cterm=NONE
  hi FoldColumn ctermfg=102 ctermbg=255 cterm=NONE
  hi Folded ctermfg=102 ctermbg=255 cterm=italic
  hi Function ctermfg=30 ctermbg=NONE cterm=NONE
  hi Identifier ctermfg=66 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=172 ctermbg=NONE cterm=NONE
  hi IncSearch ctermfg=172 ctermbg=231 cterm=reverse
  hi Include ctermfg=97 ctermbg=NONE cterm=NONE
  hi InsertMode ctermfg=143 ctermbg=231 cterm=reverse
  hi Keyword ctermfg=74 ctermbg=NONE cterm=NONE
  hi Label ctermfg=30 ctermbg=NONE cterm=NONE
  hi LineNr ctermfg=102 ctermbg=255 cterm=NONE
  hi MatchParen ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi ModeMsg ctermfg=59 ctermbg=NONE cterm=NONE
  hi MoreMsg ctermfg=172 ctermbg=NONE cterm=NONE
  hi NonText ctermfg=102 ctermbg=NONE cterm=NONE
  hi NormalMode ctermfg=102 ctermbg=231 cterm=reverse
  hi Number ctermfg=30 ctermbg=NONE cterm=NONE
  hi Operator ctermfg=74 ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=59 ctermbg=255 cterm=NONE
  hi PmenuSbar ctermfg=172 ctermbg=102 cterm=NONE
  hi PmenuSel ctermfg=231 ctermbg=172 cterm=NONE
  hi PmenuThumb ctermfg=167 ctermbg=172 cterm=NONE
  hi PreProc ctermfg=167 ctermbg=NONE cterm=NONE
  hi Question ctermfg=59 ctermbg=NONE cterm=NONE
  hi ReplaceMode ctermfg=172 ctermbg=231 cterm=reverse
  hi Search ctermfg=178 ctermbg=231 cterm=reverse
  hi SignColumn ctermfg=172 ctermbg=NONE cterm=NONE
  hi Special ctermfg=167 ctermbg=NONE cterm=NONE
  hi SpecialChar ctermfg=197 ctermbg=NONE cterm=NONE
  hi SpecialComment ctermfg=197 ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=172 ctermbg=NONE cterm=NONE
  hi SpellBad ctermfg=197 ctermbg=NONE cterm=underline
  hi SpellCap ctermfg=197 ctermbg=NONE cterm=underline
  hi SpellLocal ctermfg=197 ctermbg=NONE cterm=underline
  hi SpellRare ctermfg=197 ctermbg=NONE cterm=underline
  hi Statement ctermfg=74 ctermbg=NONE cterm=NONE
  hi StatusLine ctermfg=143 ctermbg=231 cterm=bold,reverse
  hi StatusLineNC ctermfg=143 ctermbg=255 cterm=reverse
  hi StorageClass ctermfg=74 ctermbg=NONE cterm=NONE
  hi String ctermfg=172 ctermbg=NONE cterm=NONE
  hi Structure ctermfg=167 ctermbg=NONE cterm=NONE
  hi TabLine ctermfg=255 ctermbg=143 cterm=NONE
  hi TabLineFill ctermfg=231 ctermbg=143 cterm=NONE
  hi TabLineSel ctermfg=231 ctermbg=143 cterm=bold
  hi TermCursorNC ctermfg=231 ctermbg=59 cterm=NONE
  hi Terminal ctermfg=59 ctermbg=231 cterm=NONE
  hi Title ctermfg=172 ctermbg=NONE cterm=bold
  hi Todo ctermfg=197 ctermbg=NONE cterm=bold
  hi ToolbarButton ctermfg=59 ctermbg=255 cterm=bold
  hi ToolbarLine ctermfg=102 ctermbg=255 cterm=NONE
  hi Type ctermfg=97 ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
  hi VertSplit ctermfg=255 ctermbg=143 cterm=NONE
  hi Visual ctermfg=66 ctermbg=231 cterm=reverse
  hi VisualMode ctermfg=66 ctermbg=231 cterm=reverse
  hi VisualNOS ctermfg=231 ctermbg=66 cterm=NONE
  hi WarningMsg ctermfg=167 ctermbg=NONE cterm=NONE
  hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  if s:frame == 0
    hi StatusLine ctermfg=59 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=59 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=59 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=59 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=59 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=59 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif s:frame == 1
    hi StatusLine ctermfg=167 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=167 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=167 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=167 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=172 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=167 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=143 cterm=bold
  elseif s:frame == 11
    hi StatusLine ctermfg=178 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=178 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=178 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=178 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=178 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=178 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif s:frame == 12
    hi StatusLine ctermfg=97 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=97 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=97 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=97 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=97 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=97 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif s:frame == 13
    hi StatusLine ctermfg=197 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=197 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=197 cterm=NONE
    hi TabLineFill ctermfg=255 ctermbg=197 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=197 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=197 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=172 cterm=NONE
  elseif s:frame == 14
    hi StatusLine ctermfg=38 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=38 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=38 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=38 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=38 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=38 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif s:frame == 15
    hi StatusLine ctermfg=231 ctermbg=59 cterm=bold,reverse
    hi StatusLineNC ctermfg=231 ctermbg=102 cterm=reverse
    hi TabLine ctermfg=102 ctermbg=231 cterm=NONE
    hi TabLineFill ctermfg=102 ctermbg=231 cterm=NONE
    hi TabLineSel ctermfg=59 ctermbg=231 cterm=bold
    hi VertSplit ctermfg=102 ctermbg=231 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=102 cterm=NONE
  elseif s:frame == 2
    hi StatusLine ctermfg=30 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=30 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=30 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=30 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=30 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=30 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif s:frame == 3
    hi StatusLine ctermfg=172 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=172 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=172 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=172 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=172 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=172 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif s:frame == 4
    hi StatusLine ctermfg=66 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=66 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=231 ctermbg=66 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=66 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=66 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=66 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif s:frame == 5
    hi StatusLine ctermfg=197 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=197 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=197 cterm=NONE
    hi TabLineFill ctermfg=255 ctermbg=197 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=197 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=197 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=172 cterm=NONE
  elseif s:frame == 6
    hi StatusLine ctermfg=74 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=74 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=74 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=74 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=74 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=74 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif s:frame == 7
    hi StatusLine ctermfg=255 ctermbg=59 cterm=bold,reverse
    hi StatusLineNC ctermfg=255 ctermbg=102 cterm=reverse
    hi TabLine ctermfg=102 ctermbg=255 cterm=NONE
    hi TabLineFill ctermfg=59 ctermbg=255 cterm=NONE
    hi TabLineSel ctermfg=59 ctermbg=255 cterm=bold
    hi VertSplit ctermfg=102 ctermbg=255 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif s:frame == 8
    hi StatusLine ctermfg=102 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=102 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=102 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=102 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=102 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=102 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif s:frame == 9
    hi StatusLine ctermfg=172 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=172 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=172 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=172 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=172 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=172 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=143 cterm=bold
  endif
  if s:italic == 0
    hi Comment ctermfg=102 ctermbg=NONE cterm=NONE
  endif
  if s:transp_bg == 1
    hi Normal ctermfg=59 ctermbg=NONE cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
    hi CursorLineNr ctermfg=172 ctermbg=NONE cterm=NONE
    hi FoldColumn ctermfg=102 ctermbg=NONE cterm=NONE
    hi LineNr ctermfg=102 ctermbg=NONE cterm=NONE
    hi Terminal ctermfg=59 ctermbg=NONE cterm=NONE
  endif
  if s:transp_italic == 0
    hi Folded ctermfg=102 ctermbg=255 cterm=NONE
  elseif s:transp_italic == 2
    hi Folded ctermfg=102 ctermbg=NONE cterm=NONE
  elseif s:transp_italic == 3
    hi Folded ctermfg=102 ctermbg=NONE cterm=italic
  endif
  unlet s:frame
  unlet s:italic
  unlet s:transp_bg
  unlet s:transp_italic
  finish
endif

if str2nr(&t_Co) >= 8
  hi Normal ctermfg=Black ctermbg=White cterm=NONE
  hi Boolean ctermfg=Green ctermbg=NONE cterm=NONE
  hi Character ctermfg=DarkMagenta ctermbg=NONE cterm=NONE
  hi ColorColumn ctermfg=NONE ctermbg=Gray cterm=NONE
  hi CommandMode ctermfg=DarkMagenta ctermbg=White cterm=reverse
  hi Comment ctermfg=DarkGray ctermbg=NONE cterm=italic
  hi Conceal ctermfg=DarkGreen ctermbg=NONE cterm=NONE
  hi Constant ctermfg=DarkGreen ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
  hi CursorColumn ctermfg=NONE ctermbg=Gray cterm=NONE
  hi CursorIM ctermfg=NONE ctermbg=White cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=Gray cterm=NONE
  hi CursorLineNr ctermfg=Red ctermbg=Gray cterm=NONE
  hi Debug ctermfg=DarkMagenta ctermbg=NONE cterm=NONE
  hi Delimiter ctermfg=DarkBlue ctermbg=NONE cterm=NONE
  hi DiffAdd ctermfg=Green ctermbg=Black cterm=reverse
  hi DiffChange ctermfg=DarkYellow ctermbg=White cterm=reverse
  hi DiffDelete ctermfg=DarkRed ctermbg=White cterm=reverse
  hi DiffText ctermfg=DarkCyan ctermbg=White cterm=bold,reverse
  hi Directory ctermfg=DarkGreen ctermbg=NONE cterm=NONE
  hi EndOfBuffer ctermfg=Red ctermbg=NONE cterm=NONE
  hi Error ctermfg=DarkRed ctermbg=White cterm=reverse
  hi ErrorMsg ctermfg=DarkRed ctermbg=White cterm=reverse
  hi Float ctermfg=Green ctermbg=NONE cterm=NONE
  hi FoldColumn ctermfg=DarkGray ctermbg=Gray cterm=NONE
  hi Folded ctermfg=DarkGray ctermbg=Gray cterm=italic
  hi Function ctermfg=DarkGreen ctermbg=NONE cterm=NONE
  hi Identifier ctermfg=DarkBlue ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=DarkYellow ctermbg=NONE cterm=NONE
  hi IncSearch ctermfg=Red ctermbg=White cterm=reverse
  hi Include ctermfg=Blue ctermbg=NONE cterm=NONE
  hi InsertMode ctermfg=Green ctermbg=White cterm=reverse
  hi Keyword ctermfg=DarkCyan ctermbg=NONE cterm=NONE
  hi Label ctermfg=DarkGreen ctermbg=NONE cterm=NONE
  hi LineNr ctermfg=DarkGray ctermbg=Gray cterm=NONE
  hi MatchParen ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi ModeMsg ctermfg=Black ctermbg=NONE cterm=NONE
  hi MoreMsg ctermfg=Red ctermbg=NONE cterm=NONE
  hi NonText ctermfg=DarkGray ctermbg=NONE cterm=NONE
  hi NormalMode ctermfg=DarkGray ctermbg=White cterm=reverse
  hi Number ctermfg=DarkGreen ctermbg=NONE cterm=NONE
  hi Operator ctermfg=DarkCyan ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=Black ctermbg=Gray cterm=NONE
  hi PmenuSbar ctermfg=Red ctermbg=DarkGray cterm=NONE
  hi PmenuSel ctermfg=White ctermbg=Red cterm=NONE
  hi PmenuThumb ctermfg=DarkRed ctermbg=Red cterm=NONE
  hi PreProc ctermfg=DarkRed ctermbg=NONE cterm=NONE
  hi Question ctermfg=Black ctermbg=NONE cterm=NONE
  hi ReplaceMode ctermfg=Red ctermbg=White cterm=reverse
  hi Search ctermfg=Yellow ctermbg=White cterm=reverse
  hi SignColumn ctermfg=Red ctermbg=NONE cterm=NONE
  hi Special ctermfg=DarkRed ctermbg=NONE cterm=NONE
  hi SpecialChar ctermfg=DarkMagenta ctermbg=NONE cterm=NONE
  hi SpecialComment ctermfg=DarkMagenta ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=Red ctermbg=NONE cterm=NONE
  hi SpellBad ctermfg=DarkMagenta ctermbg=NONE cterm=underline
  hi SpellCap ctermfg=DarkMagenta ctermbg=NONE cterm=underline
  hi SpellLocal ctermfg=DarkMagenta ctermbg=NONE cterm=underline
  hi SpellRare ctermfg=DarkMagenta ctermbg=NONE cterm=underline
  hi Statement ctermfg=DarkCyan ctermbg=NONE cterm=NONE
  hi StatusLine ctermfg=Green ctermbg=White cterm=bold,reverse
  hi StatusLineNC ctermfg=Green ctermbg=Gray cterm=reverse
  hi StorageClass ctermfg=DarkCyan ctermbg=NONE cterm=NONE
  hi String ctermfg=Red ctermbg=NONE cterm=NONE
  hi Structure ctermfg=DarkRed ctermbg=NONE cterm=NONE
  hi TabLine ctermfg=Gray ctermbg=Green cterm=NONE
  hi TabLineFill ctermfg=White ctermbg=Green cterm=NONE
  hi TabLineSel ctermfg=White ctermbg=Green cterm=bold
  hi TermCursorNC ctermfg=White ctermbg=Black cterm=NONE
  hi Terminal ctermfg=Black ctermbg=White cterm=NONE
  hi Title ctermfg=Red ctermbg=NONE cterm=bold
  hi Todo ctermfg=DarkMagenta ctermbg=NONE cterm=bold
  hi ToolbarButton ctermfg=Black ctermbg=Gray cterm=bold
  hi ToolbarLine ctermfg=DarkGray ctermbg=Gray cterm=NONE
  hi Type ctermfg=Blue ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
  hi VertSplit ctermfg=Gray ctermbg=Green cterm=NONE
  hi Visual ctermfg=DarkBlue ctermbg=White cterm=reverse
  hi VisualMode ctermfg=DarkBlue ctermbg=White cterm=reverse
  hi VisualNOS ctermfg=White ctermbg=DarkBlue cterm=NONE
  hi WarningMsg ctermfg=DarkRed ctermbg=NONE cterm=NONE
  hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  if s:frame == 0
    hi StatusLine ctermfg=Black ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=Black ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=Black cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=Black cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=Black cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=Black cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif s:frame == 1
    hi StatusLine ctermfg=DarkRed ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=DarkRed ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=DarkRed cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=DarkRed cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=Red cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=DarkRed cterm=NONE
    hi WildMenu ctermfg=White ctermbg=Green cterm=bold
  elseif s:frame == 11
    hi StatusLine ctermfg=Yellow ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=Yellow ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=Yellow cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=Yellow cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=Yellow cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=Yellow cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif s:frame == 12
    hi StatusLine ctermfg=Blue ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=Blue ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=Blue cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=Blue cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=Blue cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=Blue cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif s:frame == 13
    hi StatusLine ctermfg=Magenta ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=Magenta ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=Magenta cterm=NONE
    hi TabLineFill ctermfg=Gray ctermbg=Magenta cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=Magenta cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=Magenta cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkYellow cterm=NONE
  elseif s:frame == 14
    hi StatusLine ctermfg=Cyan ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=Cyan ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=Cyan cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=Cyan cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=Cyan cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=Cyan cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif s:frame == 15
    hi StatusLine ctermfg=White ctermbg=Black cterm=bold,reverse
    hi StatusLineNC ctermfg=White ctermbg=DarkGray cterm=reverse
    hi TabLine ctermfg=DarkGray ctermbg=White cterm=NONE
    hi TabLineFill ctermfg=DarkGray ctermbg=White cterm=NONE
    hi TabLineSel ctermfg=Black ctermbg=White cterm=bold
    hi VertSplit ctermfg=DarkGray ctermbg=White cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkGray cterm=NONE
  elseif s:frame == 2
    hi StatusLine ctermfg=DarkGreen ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=DarkGreen ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=DarkGreen cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=DarkGreen cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=DarkGreen cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=DarkGreen cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif s:frame == 3
    hi StatusLine ctermfg=DarkYellow ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=DarkYellow ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=DarkYellow cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=DarkYellow cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=DarkYellow cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=DarkYellow cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif s:frame == 4
    hi StatusLine ctermfg=DarkBlue ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=DarkBlue ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=White ctermbg=DarkBlue cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=DarkBlue cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=DarkBlue cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=DarkBlue cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif s:frame == 5
    hi StatusLine ctermfg=DarkMagenta ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=DarkMagenta ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=DarkMagenta cterm=NONE
    hi TabLineFill ctermfg=Gray ctermbg=DarkMagenta cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=DarkMagenta cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=DarkMagenta cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkYellow cterm=NONE
  elseif s:frame == 6
    hi StatusLine ctermfg=DarkCyan ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=DarkCyan ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=DarkCyan cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=DarkCyan cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=DarkCyan cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=DarkCyan cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif s:frame == 7
    hi StatusLine ctermfg=Gray ctermbg=Black cterm=bold,reverse
    hi StatusLineNC ctermfg=Gray ctermbg=DarkGray cterm=reverse
    hi TabLine ctermfg=DarkGray ctermbg=Gray cterm=NONE
    hi TabLineFill ctermfg=Black ctermbg=Gray cterm=NONE
    hi TabLineSel ctermfg=Black ctermbg=Gray cterm=bold
    hi VertSplit ctermfg=DarkGray ctermbg=Gray cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif s:frame == 8
    hi StatusLine ctermfg=DarkGray ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=DarkGray ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=DarkGray cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=DarkGray cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=DarkGray cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=DarkGray cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif s:frame == 9
    hi StatusLine ctermfg=Red ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=Red ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=Red cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=Red cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=Red cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=Red cterm=NONE
    hi WildMenu ctermfg=White ctermbg=Green cterm=bold
  endif
  if s:italic == 0
    hi Comment ctermfg=DarkGray ctermbg=NONE cterm=NONE
  endif
  if s:transp_bg == 1
    hi Normal ctermfg=Black ctermbg=NONE cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
    hi CursorLineNr ctermfg=Red ctermbg=NONE cterm=NONE
    hi FoldColumn ctermfg=DarkGray ctermbg=NONE cterm=NONE
    hi LineNr ctermfg=DarkGray ctermbg=NONE cterm=NONE
    hi Terminal ctermfg=Black ctermbg=NONE cterm=NONE
  endif
  if s:transp_italic == 0
    hi Folded ctermfg=DarkGray ctermbg=Gray cterm=NONE
  elseif s:transp_italic == 2
    hi Folded ctermfg=DarkGray ctermbg=NONE cterm=NONE
  elseif s:transp_italic == 3
    hi Folded ctermfg=DarkGray ctermbg=NONE cterm=italic
  endif
  unlet s:frame
  unlet s:italic
  unlet s:transp_bg
  unlet s:transp_italic
  finish
endif

if str2nr(&t_Co) >= 0
  hi Normal term=NONE
  hi Boolean term=NONE
  hi Character term=NONE
  hi ColorColumn term=reverse
  hi CommandMode term=reverse
  hi Comment term=italic
  hi Conceal term=NONE
  hi Constant term=bold,italic
  hi Cursor term=NONE
  hi CursorColumn term=reverse
  hi CursorIM term=NONE
  hi CursorLine term=underline
  hi CursorLineNr term=bold,italic,reverse,underline
  hi Debug term=NONE
  hi Delimiter term=NONE
  hi DiffAdd term=reverse,underline
  hi DiffChange term=reverse,underline
  hi DiffDelete term=reverse,underline
  hi DiffText term=bold,reverse,underline
  hi Directory term=NONE
  hi EndOfBuffer term=NONE
  hi Error term=reverse
  hi ErrorMsg term=bold,italic,reverse
  hi Float term=NONE
  hi FoldColumn term=reverse
  hi Folded term=italic,reverse,underline
  hi Function term=NONE
  hi Identifier term=italic
  hi Ignore term=NONE
  hi IncSearch term=bold,italic,reverse
  hi Include term=NONE
  hi InsertMode term=reverse
  hi Keyword term=NONE
  hi Label term=NONE
  hi LineNr term=reverse
  hi MatchParen term=bold,underline
  hi ModeMsg term=NONE
  hi MoreMsg term=NONE
  hi NonText term=NONE
  hi NormalMode term=reverse
  hi Number term=NONE
  hi Operator term=NONE
  hi Pmenu term=reverse
  hi PmenuSbar term=NONE
  hi PmenuSel term=NONE
  hi PmenuThumb term=NONE
  hi PreProc term=italic
  hi Question term=standout
  hi ReplaceMode term=reverse
  hi Search term=italic,underline
  hi SignColumn term=reverse
  hi Special term=bold,italic
  hi SpecialChar term=NONE
  hi SpecialComment term=NONE
  hi SpecialKey term=bold
  hi SpellBad term=italic,underline
  hi SpellCap term=italic,underline
  hi SpellLocal term=italic,underline
  hi SpellRare term=italic,underline
  hi Statement term=bold
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=reverse
  hi StorageClass term=NONE
  hi String term=NONE
  hi Structure term=NONE
  hi TabLine term=italic,reverse,underline
  hi TabLineFill term=reverse,underline
  hi TabLineSel term=bold
  hi TermCursorNC term=NONE
  hi Terminal term=NONE
  hi Title term=bold
  hi Todo term=bold,underline
  hi ToolbarButton term=bold,reverse
  hi ToolbarLine term=reverse
  hi Type term=bold
  hi Underlined term=underline
  hi VertSplit term=reverse
  hi Visual term=reverse
  hi VisualMode term=reverse
  hi VisualNOS term=NONE
  hi WarningMsg term=standout
  hi WildMenu term=bold
  unlet s:frame
  unlet s:italic
  unlet s:transp_bg
  unlet s:transp_italic
  finish
endif

" vim: nowrap et sw=2
