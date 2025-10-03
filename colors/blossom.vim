if exists('g:blossom')
  finish
endif

lua require('crush.init').set_variant("blossom")

let g:colors_name = 'blossom'
