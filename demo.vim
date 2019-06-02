" Source me :)
if !exists('g:terminal_ansi_colors')
  finish
endif
colorscheme wwdc17
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

for col in g:terminal_ansi_colors
  call append('$', col . ' '
        \ . repeat(col == '#fafafa' ? ' ' : '▇', 60)
        \ . ' rgb(' . join(colortemplate#colorspace#hex2rgb(col), ', ')  . ')')
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

hi WWDC17Demo0  guifg=#5f5f61         guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo1  guifg=#e8503f           guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo2  guifg=#00998c         guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo3  guifg=#d87900        guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo4  guifg=#527f8f          guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo5  guifg=#db2d45       guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo6  guifg=#159ccc          guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo7  guifg=#f0f0f0         guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo8  guifg=#888888   guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo9  guifg=#d87900     guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo10 guifg=#abb96e   guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo11 guifg=#e1ad0b  guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo12 guifg=#8c61a6    guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo13 guifg=#eb314b guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo14 guifg=#23bce1    guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo15 guifg=#fafafa   guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WWDC17Demo16 guifg=#527f8f          guibg=NONE guisp=NONE cterm=NONE gui=NONE
