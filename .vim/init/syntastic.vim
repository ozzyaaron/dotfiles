set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:loaded_syntastic_cucumber_cucumber_checker = 0
" let g:syntastic_cucumber_cucumber_args="--profile syntastic"
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_warning_symbol = "⚠"
" let g:syntastic_debug = 1
