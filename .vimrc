call plug#begin('~/.vim/plugged')

" Inserts spaces when Tab is pressed
set expandtab
" tab size to 2 spaces width
set tabstop=2
" number of space characters inserted for indentation
set shiftwidth=2

" Language

" vim-javascript
Plug 'pangloss/vim-javascript'
	let g:javascript_plugin_jsdoc = 1
" vim indent guides
Plug 'nathanaelkane/vim-indent-guides'

" Json sintax highlighter
Plug 'elzr/vim-json'

" vim-go plugin by faith
Plug 'fatih/vim-go'
  let g:go_highlight_functions = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_fields = 1
  let g:go_highlight_types = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_build_constraints = 1

" Linting	
" Syntactistic
Plug 'scrooloose/syntastic'
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*

	let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
	let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
	let g:go_list_type = "quickfix"

	let g:syntastic_javascript_checkers = ['eslint']
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0

" Prefer local ESLint install over global 
Plug 'mtscout6/syntastic-local-eslint.vim'	
 
"Auto-complete
" Neocomplete
Plug 'shougo/neocomplete.vim'
	" Use neocomplete.
	let g:neocomplete#enable_at_startup = 1
	" Use smartcase.
	let g:neocomplete#enable_smart_case = 1
	" AutoComplPop like behavior.
	let g:neocomplete#enable_auto_select = 1
	" Enable omni completion.
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html,markdown setlocal	omnifunc=htmlcomplete#CompleteTags 
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	
" Code Navigation
" Numbers
Plug 'myusuf3/numbers.vim'
	set number

"diaplay
" molokai theme for vim
Plug 'fatih/molokai'

" Vim Airline
Plug 'bling/vim-airline'
	" enables airline at startup
	set laststatus=2
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'

" Themes for Airline
Plug 'vim-airline/vim-airline-themes'


" Navigation
Plug 'ctrlpvim/ctrlp.vim'
	set runtimepath^=~/.vim/bundle/ctrlp.vim
	let g:ctrlp_map = '<c-p>'
	let g:ctrlp_cmd = 'CtrlP'
	let g:ctrlp_working_path_mode = 'ra'
	let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
	set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
	
" Add Plugins to &runtimepath
call plug#end()
