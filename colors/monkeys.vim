if exists('g:monkeys')
  finish
endif

lua require('init').set_variant("monkeys")

let g:colors_name = 'monkeys'
