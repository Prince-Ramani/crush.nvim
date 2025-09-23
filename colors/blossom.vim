if exists('g:blossom')
  finish
endif

let g:colors_name = 'blossom'

lua require('crush.init').set_variant("blossom")
