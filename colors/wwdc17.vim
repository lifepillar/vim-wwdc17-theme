" Name:         WWDC17
" Description:  Colorful light color scheme for Vim inspired by Apple's WWDC17 page
" Author:       Lifepillar <lifepillar@lifepillar.me>
" Maintainer:   Lifepillar <lifepillar@lifepillar.me>
" Website:      https://github.com/lifepillar/vim-wwdc17-theme
" License:      This file is placed in the public domain
" Last Updated: Tue Jun 19 15:01:40 2018

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[WWDC17] There are not enough colors.'
  finish
endif

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'wwdc17'

let g:terminal_ansi_colors = ['#5f5f61', '#e8503f', '#00a7a0', '#e1ad0b', '#4a8091', '#db2d45', '#1faed0', '#f0f0f0',
      \                         '#888888', '#d87b32', '#abb96e', '#ebb822', '#8c61a6', '#eb314b', '#23bce1', '#fafafa']

" Color similarity table (light background)
"   brightblack: GUI=#888888/rgb(136,136,136)  Term=102 #878787/rgb(135,135,135)  [delta=0.359050]
"         white: GUI=#f0f0f0/rgb(240,240,240)  Term=255 #eeeeee/rgb(238,238,238)  [delta=0.419881]
"   brightwhite: GUI=#fafafa/rgb(250,250,250)  Term=231 #ffffff/rgb(255,255,255)  [delta=0.996523]
"         black: GUI=#5f5f61/rgb( 95, 95, 97)  Term= 59 #5f5f5f/rgb( 95, 95, 95)  [delta=1.268071]
"          cyan: GUI=#1faed0/rgb( 31,174,208)  Term= 38 #00afd7/rgb(  0,175,215)  [delta=2.066743]
"    brightblue: GUI=#8c61a6/rgb(140, 97,166)  Term= 97 #875faf/rgb(135, 95,175)  [delta=2.491843]
"        yellow: GUI=#e1ad0b/rgb(225,173, 11)  Term=178 #d7af00/rgb(215,175,  0)  [delta=3.335617]
"         green: GUI=#00a7a0/rgb(  0,167,160)  Term= 37 #00afaf/rgb(  0,175,175)  [delta=3.541783]
"    brightcyan: GUI=#23bce1/rgb( 35,188,225)  Term= 38 #00afd7/rgb(  0,175,215)  [delta=3.944706]
"  brightyellow: GUI=#ebb822/rgb(235,184, 34)  Term=178 #d7af00/rgb(215,175,  0)  [delta=4.174274]
"   brightgreen: GUI=#abb96e/rgb(171,185,110)  Term=143 #afaf5f/rgb(175,175, 95)  [delta=4.643973]
" brightmagenta: GUI=#eb314b/rgb(235, 49, 75)  Term=197 #ff005f/rgb(255,  0, 95)  [delta=6.411385]
"     brightred: GUI=#d87b32/rgb(216,123, 50)  Term=166 #d75f00/rgb(215, 95,  0)  [delta=7.431391]
"           red: GUI=#e8503f/rgb(232, 80, 63)  Term=167 #d75f5f/rgb(215, 95, 95)  [delta=7.665136]
"          blue: GUI=#4a8091/rgb( 74,128,145)  Term= 31 #0087af/rgb(  0,135,175)  [delta=8.136607]
"       magenta: GUI=#db2d45/rgb(219, 45, 69)  Term=197 #ff005f/rgb(255,  0, 95)  [delta=8.426831]
if !has('gui_running') && get(g:, 'wwdc17_transp_bg', 0)
  hi Normal ctermfg=59 ctermbg=NONE guifg=#5f5f61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=166 ctermbg=NONE guifg=#d87b32 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=102 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi LineNr ctermfg=102 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=102 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=59 ctermbg=NONE guifg=#5f5f61 guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=59 ctermbg=231 guifg=#5f5f61 guibg=#fafafa guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=166 ctermbg=255 guifg=#d87b32 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=102 ctermbg=255 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE,italic
  hi LineNr ctermfg=102 ctermbg=255 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=102 ctermbg=255 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=59 ctermbg=231 guifg=#5f5f61 guibg=#fafafa guisp=NONE cterm=NONE gui=NONE
endif
hi ColorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=37 ctermbg=NONE guifg=#00a7a0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CursorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=143 ctermbg=fg guifg=#abb96e guibg=fg guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=178 ctermbg=231 guifg=#e1ad0b guibg=#fafafa guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=167 ctermbg=231 guifg=#e8503f guibg=#fafafa guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=38 ctermbg=231 guifg=#1faed0 guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi Directory ctermfg=37 ctermbg=NONE guifg=#00a7a0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=166 ctermbg=NONE guifg=#d87b32 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=167 ctermbg=231 guifg=#e8503f guibg=#fafafa guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=166 ctermbg=231 guifg=#d87b32 guibg=#fafafa guisp=NONE cterm=NONE,reverse gui=NONE,standout
hi MatchParen ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#5f5f61 cterm=NONE,bold,underline gui=NONE,bold,underline
hi ModeMsg ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=166 ctermbg=NONE guifg=#d87b32 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=102 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=fg ctermbg=255 guifg=fg guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=166 ctermbg=102 guifg=#d87b32 guibg=#888888 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=231 ctermbg=166 guifg=#fafafa guibg=#d87b32 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=167 ctermbg=166 guifg=#e8503f guibg=#d87b32 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=178 ctermbg=231 guifg=#ebb822 guibg=#fafafa guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=166 ctermbg=NONE guifg=#d87b32 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=166 ctermbg=NONE guifg=#d87b32 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=#888888 cterm=NONE,underline gui=NONE,undercurl
hi SpellCap ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=#888888 cterm=NONE,underline gui=NONE,undercurl
hi SpellLocal ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=#888888 cterm=NONE,underline gui=NONE,undercurl
hi SpellRare ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=#888888 cterm=NONE,underline gui=NONE,undercurl
hi Title ctermfg=166 ctermbg=NONE guifg=#d87b32 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Visual ctermfg=31 ctermbg=231 guifg=#4a8091 guibg=#fafafa guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=231 ctermbg=31 guifg=#fafafa guibg=#4a8091 guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=167 ctermbg=NONE guifg=#e8503f guibg=NONE guisp=NONE cterm=NONE gui=NONE
let s:fc = abs(get(g:, 'wwdc17_frame_color', 10)) % 16
if s:fc == 0
  hi StatusLine ctermfg=59 ctermbg=231 guifg=#5f5f61 guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=59 ctermbg=255 guifg=#5f5f61 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=255 ctermbg=59 guifg=#f0f0f0 guibg=#5f5f61 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=231 ctermbg=59 guifg=#fafafa guibg=#5f5f61 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=59 guifg=#fafafa guibg=#5f5f61 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=255 ctermbg=59 guifg=#f0f0f0 guibg=#5f5f61 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=197 guifg=#fafafa guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 1
  hi StatusLine ctermfg=167 ctermbg=231 guifg=#e8503f guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=167 ctermbg=255 guifg=#e8503f guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=255 ctermbg=167 guifg=#f0f0f0 guibg=#e8503f guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=231 ctermbg=167 guifg=#fafafa guibg=#e8503f guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=166 guifg=#fafafa guibg=#d87b32 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=255 ctermbg=167 guifg=#f0f0f0 guibg=#e8503f guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=143 guifg=#fafafa guibg=#abb96e guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 2
  hi StatusLine ctermfg=37 ctermbg=231 guifg=#00a7a0 guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=37 ctermbg=255 guifg=#00a7a0 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=255 ctermbg=37 guifg=#f0f0f0 guibg=#00a7a0 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=231 ctermbg=37 guifg=#fafafa guibg=#00a7a0 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=37 guifg=#fafafa guibg=#00a7a0 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=255 ctermbg=37 guifg=#f0f0f0 guibg=#00a7a0 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=197 guifg=#fafafa guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 3
  hi StatusLine ctermfg=178 ctermbg=231 guifg=#e1ad0b guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=178 ctermbg=255 guifg=#e1ad0b guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=255 ctermbg=178 guifg=#f0f0f0 guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=231 ctermbg=178 guifg=#fafafa guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=178 guifg=#fafafa guibg=#e1ad0b guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=255 ctermbg=178 guifg=#f0f0f0 guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=197 guifg=#fafafa guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 4
  hi StatusLine ctermfg=31 ctermbg=231 guifg=#4a8091 guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=31 ctermbg=255 guifg=#4a8091 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=231 ctermbg=31 guifg=#fafafa guibg=#4a8091 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=231 ctermbg=31 guifg=#fafafa guibg=#4a8091 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=31 guifg=#fafafa guibg=#4a8091 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=255 ctermbg=31 guifg=#f0f0f0 guibg=#4a8091 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=197 guifg=#fafafa guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 5
  hi StatusLine ctermfg=197 ctermbg=231 guifg=#db2d45 guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=197 ctermbg=255 guifg=#db2d45 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=255 ctermbg=197 guifg=#f0f0f0 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=255 ctermbg=197 guifg=#f0f0f0 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=197 guifg=#fafafa guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=255 ctermbg=197 guifg=#f0f0f0 guibg=#db2d45 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=178 guifg=#fafafa guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
elseif s:fc == 6
  hi StatusLine ctermfg=38 ctermbg=231 guifg=#1faed0 guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=38 ctermbg=255 guifg=#1faed0 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=255 ctermbg=38 guifg=#f0f0f0 guibg=#1faed0 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=231 ctermbg=38 guifg=#fafafa guibg=#1faed0 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=38 guifg=#fafafa guibg=#1faed0 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=255 ctermbg=38 guifg=#f0f0f0 guibg=#1faed0 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=197 guifg=#fafafa guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 7
  hi StatusLine ctermfg=255 ctermbg=59 guifg=#f0f0f0 guibg=#5f5f61 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=255 ctermbg=102 guifg=#f0f0f0 guibg=#888888 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=102 ctermbg=255 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=59 ctermbg=255 guifg=#5f5f61 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=59 ctermbg=255 guifg=#5f5f61 guibg=#f0f0f0 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=102 ctermbg=255 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=197 guifg=#fafafa guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 8
  hi StatusLine ctermfg=102 ctermbg=231 guifg=#888888 guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=102 ctermbg=255 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=255 ctermbg=102 guifg=#f0f0f0 guibg=#888888 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=231 ctermbg=102 guifg=#fafafa guibg=#888888 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=102 guifg=#fafafa guibg=#888888 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=255 ctermbg=102 guifg=#f0f0f0 guibg=#888888 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=197 guifg=#fafafa guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 9
  hi StatusLine ctermfg=166 ctermbg=231 guifg=#d87b32 guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=166 ctermbg=255 guifg=#d87b32 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=255 ctermbg=166 guifg=#f0f0f0 guibg=#d87b32 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=231 ctermbg=166 guifg=#fafafa guibg=#d87b32 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=166 guifg=#fafafa guibg=#d87b32 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=255 ctermbg=166 guifg=#f0f0f0 guibg=#d87b32 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=143 guifg=#fafafa guibg=#abb96e guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 10
  hi StatusLine ctermfg=143 ctermbg=231 guifg=#abb96e guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=143 ctermbg=255 guifg=#abb96e guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=255 ctermbg=143 guifg=#f0f0f0 guibg=#abb96e guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=231 ctermbg=143 guifg=#fafafa guibg=#abb96e guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=143 guifg=#fafafa guibg=#abb96e guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=255 ctermbg=143 guifg=#f0f0f0 guibg=#abb96e guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=197 guifg=#fafafa guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 11
  hi StatusLine ctermfg=178 ctermbg=231 guifg=#ebb822 guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=178 ctermbg=255 guifg=#ebb822 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=255 ctermbg=178 guifg=#f0f0f0 guibg=#ebb822 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=231 ctermbg=178 guifg=#fafafa guibg=#ebb822 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=178 guifg=#fafafa guibg=#ebb822 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=255 ctermbg=178 guifg=#f0f0f0 guibg=#ebb822 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=197 guifg=#fafafa guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 12
  hi StatusLine ctermfg=97 ctermbg=231 guifg=#8c61a6 guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=97 ctermbg=255 guifg=#8c61a6 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=255 ctermbg=97 guifg=#f0f0f0 guibg=#8c61a6 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=231 ctermbg=97 guifg=#fafafa guibg=#8c61a6 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=97 guifg=#fafafa guibg=#8c61a6 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=255 ctermbg=97 guifg=#f0f0f0 guibg=#8c61a6 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=197 guifg=#fafafa guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 13
  hi StatusLine ctermfg=197 ctermbg=231 guifg=#eb314b guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=197 ctermbg=255 guifg=#eb314b guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=255 ctermbg=197 guifg=#f0f0f0 guibg=#eb314b guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=255 ctermbg=197 guifg=#f0f0f0 guibg=#eb314b guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=197 guifg=#fafafa guibg=#eb314b guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=255 ctermbg=197 guifg=#f0f0f0 guibg=#eb314b guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=178 guifg=#fafafa guibg=#e1ad0b guisp=NONE cterm=NONE gui=NONE
elseif s:fc == 14
  hi StatusLine ctermfg=38 ctermbg=231 guifg=#23bce1 guibg=#fafafa guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=38 ctermbg=255 guifg=#23bce1 guibg=#f0f0f0 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=255 ctermbg=38 guifg=#f0f0f0 guibg=#23bce1 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=231 ctermbg=38 guifg=#fafafa guibg=#23bce1 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=231 ctermbg=38 guifg=#fafafa guibg=#23bce1 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=255 ctermbg=38 guifg=#f0f0f0 guibg=#23bce1 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=197 guifg=#fafafa guibg=#db2d45 guisp=NONE cterm=NONE,bold gui=NONE,bold
elseif s:fc == 15
  hi StatusLine ctermfg=231 ctermbg=59 guifg=#fafafa guibg=#5f5f61 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi StatusLineNC ctermfg=231 ctermbg=102 guifg=#fafafa guibg=#888888 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLine ctermfg=102 ctermbg=231 guifg=#888888 guibg=#fafafa guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=102 ctermbg=231 guifg=#888888 guibg=#fafafa guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=59 ctermbg=231 guifg=#5f5f61 guibg=#fafafa guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VertSplit ctermfg=102 ctermbg=231 guifg=#888888 guibg=#fafafa guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=231 ctermbg=102 guifg=#fafafa guibg=#888888 guisp=NONE cterm=NONE gui=NONE
endif
unlet s:fc
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi Boolean ctermfg=143 ctermbg=NONE guifg=#abb96e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=102 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
hi! link Conditional Statement
hi Constant ctermfg=37 ctermbg=NONE guifg=#00a7a0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi Debug ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=31 ctermbg=NONE guifg=#4a8091 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=167 ctermbg=231 guifg=#e8503f guibg=#fafafa guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link Exception Statement
hi Float ctermfg=143 ctermbg=NONE guifg=#abb96e guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=37 ctermbg=NONE guifg=#00a7a0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=31 ctermbg=NONE guifg=#4a8091 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=231 ctermbg=NONE guifg=#fafafa guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=97 ctermbg=NONE guifg=#8c61a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=38 ctermbg=NONE guifg=#1faed0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=37 ctermbg=NONE guifg=#00a7a0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Macro PreProc
hi Number ctermfg=37 ctermbg=NONE guifg=#00a7a0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=38 ctermbg=NONE guifg=#1faed0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link PreCondit PreProc
hi PreProc ctermfg=167 ctermbg=NONE guifg=#e8503f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=167 ctermbg=NONE guifg=#e8503f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=38 ctermbg=NONE guifg=#1faed0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=38 ctermbg=NONE guifg=#1faed0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=166 ctermbg=NONE guifg=#d87b32 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=167 ctermbg=NONE guifg=#e8503f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Tag Special
hi Todo ctermfg=197 ctermbg=NONE guifg=#db2d45 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Type ctermfg=97 ctermbg=NONE guifg=#8c61a6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=231 guifg=NONE guibg=#fafafa guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=102 ctermbg=255 guifg=#888888 guibg=#f0f0f0 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=59 ctermbg=255 guifg=#5f5f61 guibg=#f0f0f0 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi NormalMode ctermfg=102 ctermbg=231 guifg=#888888 guibg=#fafafa guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi InsertMode ctermfg=143 ctermbg=231 guifg=#abb96e guibg=#fafafa guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ReplaceMode ctermfg=166 ctermbg=231 guifg=#d87b32 guibg=#fafafa guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualMode ctermfg=31 ctermbg=231 guifg=#4a8091 guibg=#fafafa guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CommandMode ctermfg=197 ctermbg=231 guifg=#db2d45 guibg=#fafafa guisp=NONE cterm=NONE,reverse gui=NONE,reverse
if has('nvim')
  hi! link TermCursor Cursor
  hi TermCursorNC ctermfg=231 ctermbg=59 guifg=#fafafa guibg=#5f5f61 guisp=NONE cterm=NONE gui=NONE
  let g:terminal_color_0='#5f5f61'
  let g:terminal_color_1='#e8503f'
  let g:terminal_color_2='#00a7a0'
  let g:terminal_color_3='#e1ad0b'
  let g:terminal_color_4='#4a8091'
  let g:terminal_color_5='#db2d45'
  let g:terminal_color_6='#1faed0'
  let g:terminal_color_7='#f0f0f0'
  let g:terminal_color_8='#888888'
  let g:terminal_color_9='#d87b32'
  let g:terminal_color_10='#abb96e'
  let g:terminal_color_11='#ebb822'
  let g:terminal_color_12='#8c61a6'
  let g:terminal_color_13='#eb314b'
  let g:terminal_color_14='#23bce1'
  let g:terminal_color_15='#fafafa'
endif
if get(g:, "wwdc17_term_italics", 1)
  hi Comment cterm=italic
  hi Folded cterm=italic
endif
finish

" Color: black                rgb( 95,  95,  97)     ~         0
" Color: red                  rgb(232,  80,  63)     167       1
" Color: green                rgb(  0, 167, 160)     ~         2
" Color: yellow               rgb(225, 173,  11)     ~         3
" Color: blue                 rgb( 74, 128, 145)     ~         4
" Color: magenta              rgb(219,  45,  69)     ~         5
" Color: cyan                 rgb( 31, 174, 208)     ~         6
" Color: white                rgb(240, 240, 240)     ~         7
" Color: brightblack          rgb(136, 136, 136)     ~         8
" Color: brightred            rgb(216, 123,  50)     ~         9
" Color: brightgreen          rgb(171, 185, 110)     ~         10
" Color: brightyellow         rgb(235, 184,  34)     ~         11
" Color: brightblue           rgb(140,  97, 166)     ~         12
" Color: brightmagenta        rgb(235,  49,  75)     ~         13
" Color: brightcyan           rgb( 35, 188, 225)     ~         14
" Color: brightwhite          rgb(250, 250, 250)     ~         15
" Background: light
"     Normal           black             none
"     CursorLine       none              none
"     CursorLineNr     brightred         none
"     Folded           brightblack       none              g=italic
"     LineNr           brightblack       none
"     FoldColumn       brightblack       none
"     Terminal         black             none
"     Normal           black             brightwhite
"     CursorLine       none              white
"     CursorLineNr     brightred         white
"     Folded           brightblack       white             g=italic
"     LineNr           brightblack       white
"     FoldColumn       brightblack       white
"     Terminal         black             brightwhite
" ColorColumn          none              white
" Conceal              green             none
" Cursor               none              none              reverse
" CursorColumn         none              white
" DiffAdd              brightgreen       fg                reverse
" DiffChange           yellow            brightwhite       reverse
" DiffDelete           red               brightwhite       reverse
" DiffText             cyan              brightwhite       bold,reverse
" Directory            green             none
" EndOfBuffer          brightred         none
" ErrorMsg             red               brightwhite       reverse
" IncSearch            brightred         brightwhite       t=reverse g=standout
" MatchParen           none              none              bold,underline s=black
" ModeMsg              fg                none
" MoreMsg              brightred         none
" NonText              brightblack       none
" Pmenu                fg                white
" PmenuSbar            brightred         brightblack
" PmenuSel             brightwhite       brightred
" PmenuThumb           red               brightred
" Question             fg                none
" QuickFixLine     ->  Search
" Search               brightyellow      brightwhite       reverse
" SignColumn           brightred         none
" SpecialKey           brightred         none
" SpellBad             magenta           none              s=brightblack t=underline g=undercurl
" SpellCap             magenta           none              s=brightblack t=underline g=undercurl
" SpellLocal           magenta           none              s=brightblack t=underline g=undercurl
" SpellRare            magenta           none              s=brightblack t=underline g=undercurl
" Title                brightred         none              bold
" Visual               blue              brightwhite       reverse
" VisualNOS            brightwhite       blue
" WarningMsg           red               none
" StatusLine           black             brightwhite       bold,reverse
" StatusLineNC         black             white             reverse
" TabLine              white             black
" TabLineFill          brightwhite       black
" TabLineSel           brightwhite       black             bold
" VertSplit            white             black
" WildMenu             brightwhite       magenta           bold
" StatusLine           red               brightwhite       bold,reverse
" StatusLineNC         red               white             reverse
" TabLine              white             red
" TabLineFill          brightwhite       red
" TabLineSel           brightwhite       brightred         bold
" VertSplit            white             red
" WildMenu             brightwhite       brightgreen       bold
" StatusLine           green             brightwhite       bold,reverse
" StatusLineNC         green             white             reverse
" TabLine              white             green
" TabLineFill          brightwhite       green
" TabLineSel           brightwhite       green             bold
" VertSplit            white             green
" WildMenu             brightwhite       magenta           bold
" StatusLine           yellow            brightwhite       bold,reverse
" StatusLineNC         yellow            white             reverse
" TabLine              white             yellow
" TabLineFill          brightwhite       yellow
" TabLineSel           brightwhite       yellow            bold
" VertSplit            white             yellow
" WildMenu             brightwhite       magenta           bold
" StatusLine           blue              brightwhite       bold,reverse
" StatusLineNC         blue              white             reverse
" TabLine              brightwhite       blue
" TabLineFill          brightwhite       blue
" TabLineSel           brightwhite       blue              bold
" VertSplit            white             blue
" WildMenu             brightwhite       magenta           bold
" StatusLine           magenta           brightwhite       bold,reverse
" StatusLineNC         magenta           white             reverse
" TabLine              white             magenta
" TabLineFill          white             magenta
" TabLineSel           brightwhite       magenta           bold
" VertSplit            white             magenta
" WildMenu             brightwhite       yellow
" StatusLine           cyan              brightwhite       bold,reverse
" StatusLineNC         cyan              white             reverse
" TabLine              white             cyan
" TabLineFill          brightwhite       cyan
" TabLineSel           brightwhite       cyan              bold
" VertSplit            white             cyan
" WildMenu             brightwhite       magenta           bold
" StatusLine           white             black             bold,reverse
" StatusLineNC         white             brightblack       reverse
" TabLine              brightblack       white
" TabLineFill          black             white
" TabLineSel           black             white             bold
" VertSplit            brightblack       white
" WildMenu             brightwhite       magenta           bold
" StatusLine           brightblack       brightwhite       bold,reverse
" StatusLineNC         brightblack       white             reverse
" TabLine              white             brightblack
" TabLineFill          brightwhite       brightblack
" TabLineSel           brightwhite       brightblack       bold
" VertSplit            white             brightblack
" WildMenu             brightwhite       magenta           bold
" StatusLine           brightred         brightwhite       bold,reverse
" StatusLineNC         brightred         white             reverse
" TabLine              white             brightred
" TabLineFill          brightwhite       brightred
" TabLineSel           brightwhite       brightred         bold
" VertSplit            white             brightred
" WildMenu             brightwhite       brightgreen       bold
" StatusLine           brightgreen       brightwhite       bold,reverse
" StatusLineNC         brightgreen       white             reverse
" TabLine              white             brightgreen
" TabLineFill          brightwhite       brightgreen
" TabLineSel           brightwhite       brightgreen       bold
" VertSplit            white             brightgreen
" WildMenu             brightwhite       magenta           bold
" StatusLine           brightyellow      brightwhite       bold,reverse
" StatusLineNC         brightyellow      white             reverse
" TabLine              white             brightyellow
" TabLineFill          brightwhite       brightyellow
" TabLineSel           brightwhite       brightyellow      bold
" VertSplit            white             brightyellow
" WildMenu             brightwhite       magenta           bold
" StatusLine           brightblue        brightwhite       bold,reverse
" StatusLineNC         brightblue        white             reverse
" TabLine              white             brightblue
" TabLineFill          brightwhite       brightblue
" TabLineSel           brightwhite       brightblue        bold
" VertSplit            white             brightblue
" WildMenu             brightwhite       magenta           bold
" StatusLine           brightmagenta     brightwhite       bold,reverse
" StatusLineNC         brightmagenta     white             reverse
" TabLine              white             brightmagenta
" TabLineFill          white             brightmagenta
" TabLineSel           brightwhite       brightmagenta     bold
" VertSplit            white             brightmagenta
" WildMenu             brightwhite       yellow
" StatusLine           brightcyan        brightwhite       bold,reverse
" StatusLineNC         brightcyan        white             reverse
" TabLine              white             brightcyan
" TabLineFill          brightwhite       brightcyan
" TabLineSel           brightwhite       brightcyan        bold
" VertSplit            white             brightcyan
" WildMenu             brightwhite       magenta           bold
" StatusLine           brightwhite       black             bold,reverse
" StatusLineNC         brightwhite       brightblack       reverse
" TabLine              brightblack       brightwhite
" TabLineFill          brightblack       brightwhite
" TabLineSel           black             brightwhite       bold
" VertSplit            brightblack       brightwhite
" WildMenu             brightwhite       brightblack
" StatusLineTerm    -> StatusLine
" StatusLineTermNC  -> StatusLineNC
" Boolean              brightgreen       none
" Character            magenta           none
" Comment              brightblack       none              g=italic
" Conditional       -> Statement
" Constant             green             none
" Define            -> PreProc
" Debug                magenta           none
" Delimiter            blue              none
" Error                red               brightwhite       reverse
" Exception         -> Statement
" Float                brightgreen       none
" Function             green             none
" Identifier           blue              none
" Ignore               brightwhite       none
" Include              brightblue        none
" Keyword              cyan              none
" Label                green             none
" Macro             -> PreProc
" Number               green             none
" Operator             cyan              none
" PreCondit         -> PreProc
" PreProc              red               none
" Repeat            -> Statement
" Special              red               none
" SpecialChar          magenta           none
" SpecialComment       magenta           none
" Statement            cyan              none
" StorageClass         cyan              none
" String               brightred         none
" Structure            red               none
" Tag               -> Special
" Todo                 magenta           none              bold
" Type                 brightblue        none
" Typedef           -> Type
" Underlined           none              none              underline
" lCursor           -> Cursor
" CursorIM             none              brightwhite
" ToolbarLine          brightblack       white
" ToolbarButton        black             white             bold
" NormalMode           brightblack       brightwhite       reverse
" InsertMode           brightgreen       brightwhite       reverse
" ReplaceMode          brightred         brightwhite       reverse
" VisualMode           blue              brightwhite       reverse
" CommandMode          magenta           brightwhite       reverse
" TermCursor        -> Cursor
" TermCursorNC         brightwhite       black
