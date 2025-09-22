if exists('g:crush')
  finish
endif
let g:colors_name = 'crush'

lua require('crush.init').setup()
