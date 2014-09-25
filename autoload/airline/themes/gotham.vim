" Bootstrap ===================================================================

" Let's store all the colors in a dictionary.
let s:colors = {}

" Base colors.
let s:colors.base0 = { 'gui': '#0c1014' }
let s:colors.base1 = { 'gui': '#11151c' }
let s:colors.base2 = { 'gui': '#091f2e' }
let s:colors.base3 = { 'gui': '#0a3749' }
let s:colors.base4 = { 'gui': '#245361' }
let s:colors.base5 = { 'gui': '#599cab' }
let s:colors.base6 = { 'gui': '#99d1ce' }
let s:colors.base7 = { 'gui': '#d3ebe9' }

" Other colors.
let s:colors.red     = { 'gui': '#c23127' }
let s:colors.orange  = { 'gui': '#d26937' }
let s:colors.yellow  = { 'gui': '#edb443' }
let s:colors.magenta = { 'gui': '#888ca6' }
let s:colors.violet  = { 'gui': '#4e5166' }
let s:colors.blue    = { 'gui': '#195466' }
let s:colors.cyan    = { 'gui': '#33859E' }
let s:colors.green   = { 'gui': '#2aa889' }

let g:airline#themes#gotham#palette = {}

" Just remember:
" [guifg, guibg, ctermfg, ctermbg, opts]



" Normal mode =================================================================

" Colors.
let s:N1 = [s:colors.base7.gui, s:colors.base4.gui, 17, 190]
let s:N2 = [s:colors.base5.gui, s:colors.base2.gui,  1,   1]
let s:N3 = [s:colors.base4.gui, s:colors.base1.gui,  1,   1]

let g:airline#themes#gotham#palette.normal =
      \ airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" Overrides for when the buffer is modified in normal mode.
let g:airline#themes#gotham#palette.normal_modified = {
      \ 'airline_c': [s:colors.base7.gui, s:colors.violet.gui, 1, 53, ''],
      \ }


" Insert mode ==================================================================

" Colors.
let s:I1 = [s:colors.base7.gui, s:colors.yellow.gui, 17, 45]
let s:I2 = [s:colors.base6.gui, s:colors.base4.gui, 17, 45]
let s:I3 = [s:colors.base4.gui, s:colors.base1.gui, 17, 45]

let g:airline#themes#gotham#palette.insert =
      \ airline#themes#generate_color_map(s:I1, s:I2, s:I3)

" Overrides for when the buffer is modified in insert mode.
let g:airline#themes#gotham#palette.insert_modified = {
      \ 'airline_c': [s:colors.base7.gui, s:colors.violet.gui, 1, 53, ''],
      \ }

" Overrides for when the paste is toggled in insert mode.
let g:airline#themes#gotham#palette.insert_paste = {
      \ 'airline_a': [s:I1[0], s:colors.orange.gui, s:I1[2], 172, ''] ,
      \ }



" Replace mode ================================================================

" Let's start with the same palette as insert mode...
let g:airline#themes#gotham#palette.replace = copy(g:airline#themes#gotham#palette.insert)
let g:airline#themes#gotham#palette.replace_modified =
      \ g:airline#themes#gotham#palette.insert_modified
" ...and tweak it slightly.
let g:airline#themes#gotham#palette.replace.airline_a =
      \ [s:I2[0], s:colors.red.gui, s:I2[2], 124, '']



" Visual mode =================================================================

" Colors.
let s:V1 = [s:colors.base7.gui, s:colors.green.gui, 232, 214]
let s:V2 = [s:colors.base6.gui, s:colors.base3.gui, 232, 214]
let s:V3 = s:N3

let g:airline#themes#gotham#palette.visual =
      \ airline#themes#generate_color_map(s:V1, s:V2, s:V3)

" Overrides for when the buffer is modified.
let g:airline#themes#gotham#palette.visual_modified =
      \ g:airline#themes#gotham#palette.normal_modified



" Inactive mode (when the focus is not on the window) =========================

let s:IA1 = [s:colors.base4.gui, s:colors.base2.gui, 239, 234 , '']
let s:IA2 = [s:colors.base4.gui, s:colors.base1.gui, 239, 234 , '']
let s:IA3 = [s:colors.base4.gui, s:colors.base0.gui, 239, 234 , '']

let g:airline#themes#gotham#palette.inactive =
      \ airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

let g:airline#themes#gotham#palette.inactive_modified = {
      \ 'airline_c': [s:colors.magenta.gui, '' , 97 , '', ''],
      \ }



" Accents =====================================================================

" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a 'red' accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#gotham#palette.accents = {
      \ 'red': [s:colors.red.gui, '', 160, '']
      \ }



" CtrlP =======================================================================

" Finish here if CtrlP isn't installed.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [s:colors.base6.gui, s:colors.base2.gui, 0, 0, ''    ]
let s:CP2 = [s:colors.base6.gui, s:colors.base4.gui, 0, 0, ''    ]
let s:CP3 = [s:colors.base7.gui, s:colors.green.gui, 0, 0, 'bold']

let g:airline#themes#gotham#palette.ctrlp =
      \ airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
