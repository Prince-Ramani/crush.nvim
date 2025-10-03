if exists('g:furin')
  finish
endif

lua require('crush.init').set_variant("furin")

let g:colors_name = 'furin'
