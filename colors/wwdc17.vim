vim9script

# Name:           WWDC17
# Description:    Colorful light color scheme for Vim inspired by Apple's WWDC17 page
# Author(s):      Lifepillar <lifepillar@lifepillar.me>
# URL(s):         https://github.com/lifepillar/vim-wwdc17-theme
# License:        MIT
# Last Updated:   Sun Mar 12 21:03:19 2023

# Generated by Colortemplate v3.0.0-dev

set background=light

hi clear

g:colors_name = 'wwdc17'
g:terminal_ansi_colors = ['#5f5f61', '#e8503f', '#00998c', '#d87900', '#527f8f', '#db2d45', '#159ccc', '#f0f0f0', '#888888', '#d87900', '#abb96e', '#e1ad0b', '#8c61a6', '#eb314b', '#23bce1', '#fafafa']

const t_Co = exists('&t_Co') && !has('gui_running') ? (str2nr(&t_Co) ?? 0) : -1
const frame = abs(get(g:, 'wwdc17_frame_color', 10)) % 16
const italic = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running') || has('nvim')
const transp_bg = get(g:, 'wwdc17_transp_bg', 0)
const transp_italic = (italic ? 1 : 0) + 2 * transp_bg

hi! link Conditional Statement
hi! link Define PreProc
hi! link Exception Statement
hi! link Macro PreProc
hi! link PreCondit PreProc
hi! link QuickFixLine Search
hi! link Repeat Statement
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link Tag Special
hi! link TermCursor Cursor
hi! link Typedef Type
hi! link lCursor Cursor

hi Normal guifg=#5f5f61 guibg=#fafafa gui=NONE ctermfg=59 ctermbg=231 cterm=NONE
hi Boolean guifg=#abb96e guibg=NONE gui=NONE ctermfg=143 ctermbg=NONE cterm=NONE
hi Character guifg=#db2d45 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi ColorColumn guifg=NONE guibg=#f0f0f0 gui=NONE ctermfg=NONE ctermbg=255 cterm=NONE
hi CommandMode guifg=#db2d45 guibg=#fafafa gui=reverse ctermfg=197 ctermbg=231 cterm=reverse
hi Comment guifg=#888888 guibg=NONE gui=italic ctermfg=102 ctermbg=NONE cterm=italic
hi Conceal guifg=#00998c guibg=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi Constant guifg=#00998c guibg=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi Cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
hi CursorColumn guifg=NONE guibg=#f0f0f0 gui=NONE ctermfg=NONE ctermbg=255 cterm=NONE
hi CursorIM guifg=NONE guibg=#fafafa gui=NONE ctermfg=NONE ctermbg=231 cterm=NONE
hi CursorLine guifg=NONE guibg=#f0f0f0 gui=NONE ctermfg=NONE ctermbg=255 cterm=NONE
hi CursorLineNr guifg=#d87900 guibg=#f0f0f0 gui=NONE ctermfg=172 ctermbg=255 cterm=NONE
hi Debug guifg=#db2d45 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#527f8f guibg=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#abb96e guibg=#5f5f61 gui=reverse ctermfg=143 ctermbg=59 cterm=reverse
hi DiffChange guifg=#d87900 guibg=#fafafa gui=reverse ctermfg=172 ctermbg=231 cterm=reverse
hi DiffDelete guifg=#e8503f guibg=#fafafa gui=reverse ctermfg=167 ctermbg=231 cterm=reverse
hi DiffText guifg=#159ccc guibg=#fafafa gui=bold,reverse ctermfg=74 ctermbg=231 cterm=bold,reverse
hi Directory guifg=#00998c guibg=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi EndOfBuffer guifg=#d87900 guibg=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi Error guifg=#e8503f guibg=#fafafa gui=reverse ctermfg=167 ctermbg=231 cterm=reverse
hi ErrorMsg guifg=#e8503f guibg=#fafafa gui=reverse ctermfg=167 ctermbg=231 cterm=reverse
hi Float guifg=#abb96e guibg=NONE gui=NONE ctermfg=143 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#888888 guibg=#f0f0f0 gui=NONE ctermfg=102 ctermbg=255 cterm=NONE
hi Folded guifg=#888888 guibg=#f0f0f0 gui=italic ctermfg=102 ctermbg=255 cterm=italic
hi Function guifg=#00998c guibg=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi Identifier guifg=#527f8f guibg=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi Ignore guifg=#d87900 guibg=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi IncSearch guifg=#d87900 guibg=#fafafa gui=standout ctermfg=172 ctermbg=231 cterm=standout
hi Include guifg=#8c61a6 guibg=NONE gui=NONE ctermfg=97 ctermbg=NONE cterm=NONE
hi InsertMode guifg=#abb96e guibg=#fafafa gui=reverse ctermfg=143 ctermbg=231 cterm=reverse
hi Keyword guifg=#159ccc guibg=NONE gui=NONE ctermfg=74 ctermbg=NONE cterm=NONE
hi Label guifg=#00998c guibg=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi LineNr guifg=#888888 guibg=#f0f0f0 gui=NONE ctermfg=102 ctermbg=255 cterm=NONE
hi MatchParen guifg=NONE guibg=NONE guisp=#5f5f61 gui=bold,underline ctermfg=NONE ctermbg=NONE ctermul=59 cterm=bold,underline
hi ModeMsg guifg=#5f5f61 guibg=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi MoreMsg guifg=#d87900 guibg=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi NonText guifg=#888888 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
hi NormalMode guifg=#888888 guibg=#fafafa gui=reverse ctermfg=102 ctermbg=231 cterm=reverse
hi Number guifg=#00998c guibg=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi Operator guifg=#159ccc guibg=NONE gui=NONE ctermfg=74 ctermbg=NONE cterm=NONE
hi Pmenu guifg=#5f5f61 guibg=#f0f0f0 gui=NONE ctermfg=59 ctermbg=255 cterm=NONE
hi PmenuSbar guifg=#d87900 guibg=#888888 gui=NONE ctermfg=172 ctermbg=102 cterm=NONE
hi PmenuSel guifg=#fafafa guibg=#d87900 gui=NONE ctermfg=231 ctermbg=172 cterm=NONE
hi PmenuThumb guifg=#e8503f guibg=#d87900 gui=NONE ctermfg=167 ctermbg=172 cterm=NONE
hi PreProc guifg=#e8503f guibg=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi Question guifg=#5f5f61 guibg=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi ReplaceMode guifg=#d87900 guibg=#fafafa gui=reverse ctermfg=172 ctermbg=231 cterm=reverse
hi Search guifg=#e1ad0b guibg=#fafafa gui=reverse ctermfg=178 ctermbg=231 cterm=reverse
hi SignColumn guifg=#d87900 guibg=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi Special guifg=#e8503f guibg=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#db2d45 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi SpecialComment guifg=#db2d45 guibg=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#d87900 guibg=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi SpellBad guifg=#db2d45 guibg=NONE guisp=#888888 gui=undercurl ctermfg=197 ctermbg=NONE ctermul=102 cterm=undercurl
hi SpellCap guifg=#db2d45 guibg=NONE guisp=#888888 gui=undercurl ctermfg=197 ctermbg=NONE ctermul=102 cterm=undercurl
hi SpellLocal guifg=#db2d45 guibg=NONE guisp=#888888 gui=undercurl ctermfg=197 ctermbg=NONE ctermul=102 cterm=undercurl
hi SpellRare guifg=#db2d45 guibg=NONE guisp=#888888 gui=undercurl ctermfg=197 ctermbg=NONE ctermul=102 cterm=undercurl
hi Statement guifg=#159ccc guibg=NONE gui=NONE ctermfg=74 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#abb96e guibg=#fafafa gui=bold,reverse ctermfg=143 ctermbg=231 cterm=bold,reverse
hi StatusLineNC guifg=#abb96e guibg=#f0f0f0 gui=reverse ctermfg=143 ctermbg=255 cterm=reverse
hi StorageClass guifg=#159ccc guibg=NONE gui=NONE ctermfg=74 ctermbg=NONE cterm=NONE
hi String guifg=#d87900 guibg=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi Structure guifg=#e8503f guibg=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi TabLine guifg=#f0f0f0 guibg=#abb96e gui=NONE ctermfg=255 ctermbg=143 cterm=NONE
hi TabLineFill guifg=#fafafa guibg=#abb96e gui=NONE ctermfg=231 ctermbg=143 cterm=NONE
hi TabLineSel guifg=#fafafa guibg=#abb96e gui=bold ctermfg=231 ctermbg=143 cterm=bold
hi TermCursorNC guifg=#fafafa guibg=#5f5f61 gui=NONE ctermfg=231 ctermbg=59 cterm=NONE
hi Terminal guifg=#5f5f61 guibg=#fafafa gui=NONE ctermfg=59 ctermbg=231 cterm=NONE
hi Title guifg=#d87900 guibg=NONE gui=bold ctermfg=172 ctermbg=NONE cterm=bold
hi Todo guifg=#db2d45 guibg=NONE gui=bold ctermfg=197 ctermbg=NONE cterm=bold
hi ToolbarButton guifg=#5f5f61 guibg=#f0f0f0 gui=bold ctermfg=59 ctermbg=255 cterm=bold
hi ToolbarLine guifg=#888888 guibg=#f0f0f0 gui=NONE ctermfg=102 ctermbg=255 cterm=NONE
hi Type guifg=#8c61a6 guibg=NONE gui=NONE ctermfg=97 ctermbg=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi VertSplit guifg=#f0f0f0 guibg=#abb96e gui=NONE ctermfg=255 ctermbg=143 cterm=NONE
hi Visual guifg=#527f8f guibg=#fafafa gui=reverse ctermfg=66 ctermbg=231 cterm=reverse
hi VisualMode guifg=#527f8f guibg=#fafafa gui=reverse ctermfg=66 ctermbg=231 cterm=reverse
hi VisualNOS guifg=#fafafa guibg=#527f8f gui=NONE ctermfg=231 ctermbg=66 cterm=NONE
hi WarningMsg guifg=#e8503f guibg=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi WildMenu guifg=#fafafa guibg=#db2d45 gui=bold ctermfg=231 ctermbg=197 cterm=bold

if has('gui_running')
  finish
endif

if t_Co >= 256
  hi IncSearch ctermfg=172 ctermbg=231 cterm=reverse
  hi SpellBad ctermfg=197 ctermbg=NONE ctermul=102 cterm=underline
  hi SpellCap ctermfg=197 ctermbg=NONE ctermul=102 cterm=underline
  hi SpellLocal ctermfg=197 ctermbg=NONE ctermul=102 cterm=underline
  hi SpellRare ctermfg=197 ctermbg=NONE ctermul=102 cterm=underline
  if frame == 0
    hi StatusLine ctermfg=59 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=59 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=59 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=59 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=59 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=59 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif frame == 1
    hi StatusLine ctermfg=167 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=167 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=167 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=167 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=172 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=167 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=143 cterm=bold
  elseif frame == 11
    hi StatusLine ctermfg=178 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=178 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=178 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=178 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=178 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=178 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif frame == 12
    hi StatusLine ctermfg=97 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=97 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=97 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=97 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=97 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=97 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif frame == 13
    hi StatusLine ctermfg=197 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=197 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=197 cterm=NONE
    hi TabLineFill ctermfg=255 ctermbg=197 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=197 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=197 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=172 cterm=NONE
  elseif frame == 14
    hi StatusLine ctermfg=38 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=38 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=38 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=38 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=38 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=38 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif frame == 15
    hi StatusLine ctermfg=231 ctermbg=59 cterm=bold,reverse
    hi StatusLineNC ctermfg=231 ctermbg=102 cterm=reverse
    hi TabLine ctermfg=102 ctermbg=231 cterm=NONE
    hi TabLineFill ctermfg=102 ctermbg=231 cterm=NONE
    hi TabLineSel ctermfg=59 ctermbg=231 cterm=bold
    hi VertSplit ctermfg=102 ctermbg=231 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=102 cterm=NONE
  elseif frame == 2
    hi StatusLine ctermfg=30 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=30 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=30 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=30 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=30 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=30 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif frame == 3
    hi StatusLine ctermfg=172 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=172 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=172 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=172 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=172 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=172 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif frame == 4
    hi StatusLine ctermfg=66 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=66 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=231 ctermbg=66 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=66 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=66 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=66 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif frame == 5
    hi StatusLine ctermfg=197 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=197 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=197 cterm=NONE
    hi TabLineFill ctermfg=255 ctermbg=197 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=197 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=197 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=172 cterm=NONE
  elseif frame == 6
    hi StatusLine ctermfg=74 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=74 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=74 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=74 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=74 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=74 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif frame == 7
    hi StatusLine ctermfg=255 ctermbg=59 cterm=bold,reverse
    hi StatusLineNC ctermfg=255 ctermbg=102 cterm=reverse
    hi TabLine ctermfg=102 ctermbg=255 cterm=NONE
    hi TabLineFill ctermfg=59 ctermbg=255 cterm=NONE
    hi TabLineSel ctermfg=59 ctermbg=255 cterm=bold
    hi VertSplit ctermfg=102 ctermbg=255 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif frame == 8
    hi StatusLine ctermfg=102 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=102 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=102 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=102 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=102 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=102 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=197 cterm=bold
  elseif frame == 9
    hi StatusLine ctermfg=172 ctermbg=231 cterm=bold,reverse
    hi StatusLineNC ctermfg=172 ctermbg=255 cterm=reverse
    hi TabLine ctermfg=255 ctermbg=172 cterm=NONE
    hi TabLineFill ctermfg=231 ctermbg=172 cterm=NONE
    hi TabLineSel ctermfg=231 ctermbg=172 cterm=bold
    hi VertSplit ctermfg=255 ctermbg=172 cterm=NONE
    hi WildMenu ctermfg=231 ctermbg=143 cterm=bold
  endif
  if transp_bg == 1
    hi Normal ctermfg=59 ctermbg=NONE cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
    hi CursorLineNr ctermfg=172 ctermbg=NONE cterm=NONE
    hi FoldColumn ctermfg=102 ctermbg=NONE cterm=NONE
    hi LineNr ctermfg=102 ctermbg=NONE cterm=NONE
    hi Terminal ctermfg=59 ctermbg=NONE cterm=NONE
  endif
  if transp_italic == 0
    hi Folded ctermfg=102 ctermbg=255 cterm=NONE
  elseif transp_italic == 2
    hi Folded ctermfg=102 ctermbg=NONE cterm=NONE
  elseif transp_italic == 3
    hi Folded ctermfg=102 ctermbg=NONE cterm=italic
  endif
  finish
endif

if t_Co >= 8
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
  hi MatchParen ctermfg=NONE ctermbg=NONE ctermul=Black cterm=bold,underline
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
  hi SpellBad ctermfg=DarkMagenta ctermbg=NONE ctermul=DarkGray cterm=underline
  hi SpellCap ctermfg=DarkMagenta ctermbg=NONE ctermul=DarkGray cterm=underline
  hi SpellLocal ctermfg=DarkMagenta ctermbg=NONE ctermul=DarkGray cterm=underline
  hi SpellRare ctermfg=DarkMagenta ctermbg=NONE ctermul=DarkGray cterm=underline
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
  if frame == 0
    hi StatusLine ctermfg=Black ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=Black ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=Black cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=Black cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=Black cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=Black cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif frame == 1
    hi StatusLine ctermfg=DarkRed ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=DarkRed ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=DarkRed cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=DarkRed cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=Red cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=DarkRed cterm=NONE
    hi WildMenu ctermfg=White ctermbg=Green cterm=bold
  elseif frame == 11
    hi StatusLine ctermfg=Yellow ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=Yellow ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=Yellow cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=Yellow cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=Yellow cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=Yellow cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif frame == 12
    hi StatusLine ctermfg=Blue ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=Blue ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=Blue cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=Blue cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=Blue cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=Blue cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif frame == 13
    hi StatusLine ctermfg=Magenta ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=Magenta ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=Magenta cterm=NONE
    hi TabLineFill ctermfg=Gray ctermbg=Magenta cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=Magenta cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=Magenta cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkYellow cterm=NONE
  elseif frame == 14
    hi StatusLine ctermfg=Cyan ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=Cyan ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=Cyan cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=Cyan cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=Cyan cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=Cyan cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif frame == 15
    hi StatusLine ctermfg=White ctermbg=Black cterm=bold,reverse
    hi StatusLineNC ctermfg=White ctermbg=DarkGray cterm=reverse
    hi TabLine ctermfg=DarkGray ctermbg=White cterm=NONE
    hi TabLineFill ctermfg=DarkGray ctermbg=White cterm=NONE
    hi TabLineSel ctermfg=Black ctermbg=White cterm=bold
    hi VertSplit ctermfg=DarkGray ctermbg=White cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkGray cterm=NONE
  elseif frame == 2
    hi StatusLine ctermfg=DarkGreen ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=DarkGreen ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=DarkGreen cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=DarkGreen cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=DarkGreen cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=DarkGreen cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif frame == 3
    hi StatusLine ctermfg=DarkYellow ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=DarkYellow ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=DarkYellow cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=DarkYellow cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=DarkYellow cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=DarkYellow cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif frame == 4
    hi StatusLine ctermfg=DarkBlue ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=DarkBlue ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=White ctermbg=DarkBlue cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=DarkBlue cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=DarkBlue cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=DarkBlue cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif frame == 5
    hi StatusLine ctermfg=DarkMagenta ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=DarkMagenta ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=DarkMagenta cterm=NONE
    hi TabLineFill ctermfg=Gray ctermbg=DarkMagenta cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=DarkMagenta cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=DarkMagenta cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkYellow cterm=NONE
  elseif frame == 6
    hi StatusLine ctermfg=DarkCyan ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=DarkCyan ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=DarkCyan cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=DarkCyan cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=DarkCyan cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=DarkCyan cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif frame == 7
    hi StatusLine ctermfg=Gray ctermbg=Black cterm=bold,reverse
    hi StatusLineNC ctermfg=Gray ctermbg=DarkGray cterm=reverse
    hi TabLine ctermfg=DarkGray ctermbg=Gray cterm=NONE
    hi TabLineFill ctermfg=Black ctermbg=Gray cterm=NONE
    hi TabLineSel ctermfg=Black ctermbg=Gray cterm=bold
    hi VertSplit ctermfg=DarkGray ctermbg=Gray cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif frame == 8
    hi StatusLine ctermfg=DarkGray ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=DarkGray ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=DarkGray cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=DarkGray cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=DarkGray cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=DarkGray cterm=NONE
    hi WildMenu ctermfg=White ctermbg=DarkMagenta cterm=bold
  elseif frame == 9
    hi StatusLine ctermfg=Red ctermbg=White cterm=bold,reverse
    hi StatusLineNC ctermfg=Red ctermbg=Gray cterm=reverse
    hi TabLine ctermfg=Gray ctermbg=Red cterm=NONE
    hi TabLineFill ctermfg=White ctermbg=Red cterm=NONE
    hi TabLineSel ctermfg=White ctermbg=Red cterm=bold
    hi VertSplit ctermfg=Gray ctermbg=Red cterm=NONE
    hi WildMenu ctermfg=White ctermbg=Green cterm=bold
  endif
  if transp_bg == 1
    hi Normal ctermfg=Black ctermbg=NONE cterm=NONE
    hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
    hi CursorLineNr ctermfg=Red ctermbg=NONE cterm=NONE
    hi FoldColumn ctermfg=DarkGray ctermbg=NONE cterm=NONE
    hi LineNr ctermfg=DarkGray ctermbg=NONE cterm=NONE
    hi Terminal ctermfg=Black ctermbg=NONE cterm=NONE
  endif
  if transp_italic == 0
    hi Folded ctermfg=DarkGray ctermbg=Gray cterm=NONE
  elseif transp_italic == 2
    hi Folded ctermfg=DarkGray ctermbg=NONE cterm=NONE
  elseif transp_italic == 3
    hi Folded ctermfg=DarkGray ctermbg=NONE cterm=italic
  endif
  finish
endif

if t_Co >= 0
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
  finish
endif
