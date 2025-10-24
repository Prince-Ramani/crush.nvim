if exists('g:glass')
  finish
endif

lua require('init').set_variant("glass")

let g:colors_name = 'glass'
