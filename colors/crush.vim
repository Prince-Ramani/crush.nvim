if exists('g:crush')
  finish
endif

lua require('crush.init').set_variant("crush")

let g:colors_name = 'crush'
