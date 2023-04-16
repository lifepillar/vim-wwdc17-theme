vim9script

# Source me :)

if !exists('g:terminal_ansi_colors')
  finish
endif

def Hex2Rgb(color: string): list<number>
  return [
    str2nr(color[1 : 2], 16),
    str2nr(color[3 : 4], 16),
    str2nr(color[5 : 6], 16),
  ]
enddef

const text =<< END

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

END

colorscheme wwdc17
silent tabnew
setbufvar('%', '&buftype',   'nofile')
setbufvar('%', '&bufhidden', 'wipe')
setbufvar('%', '&swapfile',  false)
setbufvar('%', '&wrap',      false)
append(0, text)

for col in g:terminal_ansi_colors
  const bar = repeat(col == '#fafafa' ? ' ' : '▇', 60)
  const rgb = join(Hex2Rgb(col), ', ')
  append('$', printf('%s %s rgb(%s)', col, bar, rgb))
endfor

for i in range(2, 11)
  for j in range(2, 21)
    const k = abs(float2nr(pow(i, j)) % 17) # Incredibly clever pseudo-random generator ;)
    execute printf('syn match WWDC17Demo%d /\%%(\%%%dl\%%%dv\)./', k, i, j)
  endfor
endfor

for i in range(13, 13 + 14)
  execute printf('syn match WWDC17Demo%d /\%%%dl.*/', i - 13, i)
endfor

syn match WWDC17Demo0 /\%28l.*/

hi WWDC17Demo0  guifg=#5f5f61         guibg=NONE guisp=NONE ctermfg=59         ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo1  guifg=#e8503f           guibg=NONE guisp=NONE ctermfg=167           ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo2  guifg=#00998c         guibg=NONE guisp=NONE ctermfg=30         ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo3  guifg=#d87900        guibg=NONE guisp=NONE ctermfg=172        ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo4  guifg=#527f8f          guibg=NONE guisp=NONE ctermfg=66          ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo5  guifg=#db2d45       guibg=NONE guisp=NONE ctermfg=197       ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo6  guifg=#159ccc          guibg=NONE guisp=NONE ctermfg=74          ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo7  guifg=#f0f0f0         guibg=NONE guisp=NONE ctermfg=255         ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo8  guifg=#888888   guibg=NONE guisp=NONE ctermfg=102   ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo9  guifg=#d87900     guibg=NONE guisp=NONE ctermfg=172     ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo10 guifg=#abb96e   guibg=NONE guisp=NONE ctermfg=143   ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo11 guifg=#e1ad0b  guibg=NONE guisp=NONE ctermfg=178  ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo12 guifg=#8c61a6    guibg=NONE guisp=NONE ctermfg=97    ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo13 guifg=#eb314b guibg=NONE guisp=NONE ctermfg=197 ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo14 guifg=#23bce1    guibg=NONE guisp=NONE ctermfg=38    ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo15 guifg=#fafafa   guibg=NONE guisp=NONE ctermfg=231   ctermbg=NONE cterm=NONE gui=NONE
hi WWDC17Demo16 guifg=#527f8f          guibg=NONE guisp=NONE ctermfg=66          ctermbg=NONE cterm=NONE gui=NONE
