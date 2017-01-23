if &diff
  syntax off
endif

" Inserts spaces when Tab is pressed
set expandtab
" tab size to 2 spaces width
set tabstop=2
" number of space characters inserted for indentation
set shiftwidth=2
" Sets the nubmer of columns for a TAB
set softtabstop=2
" scroll is offset so that the curser is always in the center of the screen
:set scrolloff=999

" autoindent
set ai

" Incremental Search
 set incsearch
" Search Highlighting
 set hlsearch

" Colour Scheme 
colorscheme molokai

" Set line numbers
set number
set relativenumber

" PHP + html autoindent
:function MyIndentPhpHtml()
: set ft=html
: normal gg=G
: set ft=php
: normal gg=G
:endfunction
nnoremap <C-S-l> :call MyIndentPhpHtml()<cr>

call plug#begin('~/.vim/plugged')

"" Easymotion for prompts to lines
"Plug 'easymotion/vim-easymotion'
"
"" Insearch for better search txt Highlighting
"Plug 'haya14busa/incsearch.vim'
"" :h g:incsearch#auto_nohlsearch
" set hlsearch
" let g:incsearch#auto_nohlsearch = 1
" map n  <Plug>(incsearch-nohl-n)
" map N  <Plug>(incsearch-nohl-N)
" map *  <Plug>(incsearch-nohl-*)
" map #  <Plug>(incsearch-nohl-#)
" map g* <Plug>(incsearch-nohl-g*)
" map g# <Plug>(incsearch-nohl-g#)

" fugative for git integration
Plug 'tpope/vim-fugitive'

" adds git info to the gutter
Plug 'airblade/vim-gitgutter'

" indent guides
Plug 'nathanaelkane/vim-indent-guides'

" Auto resizing of vim windows
Plug 'roman/golden-ratio'

" Vim todo
Plug 'dhruvasagar/vim-dotoo'

" Language

" vim-javascript
Plug 'pangloss/vim-javascript'
	let g:javascript_plugin_jsdoc = 1
  
" Json sintax highlighter
Plug 'elzr/vim-json'

" vim-go plugin by faith
Plug 'fatih/vim-go'
  let g:go_fmt_command = "goimports"
  let g:go_highlight_functions = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_fields = 1
  let g:go_highlight_types = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_build_constraints = 1

" Fuzzy file loader
Plug 'kien/ctrlp.vim'
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

  let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Linting	
" Syntactistic
Plug 'scrooloose/syntastic'
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*

	let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
	let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
	let g:go_list_type = "quickfix"

	" let g:syntastic_javascript_checkers = ['eslint']
  let g:syntastic_php_checkers = ['php']
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0

"Auto-complete
" Neocomplete
Plug 'shougo/neocomplete.vim'
	" Use neocomplete.
	let g:neocomplete#enable_at_startup = 1
	" Use smartcase.
	let g:neocomplete#enable_smart_case = 1
	" AutoComplPop like behavior.
	let g:neocomplete#enable_auto_select = 1
  " Define dictionary.
  let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
          \ }
  " <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	" Enable omni completion.
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html, markdown setlocal	omnifunc=htmlcomplete#CompleteTags 
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Php complete extended for neocomplete
    " Phpcomplete dependencies
    Plug 'shougo/vimproc.vim', {'do' : 'make'}
    " Unite adds sorces to the onmicomplete for phpcomplete	
    Plug 'Shougo/unite.vim'
  Plug 'm2mdas/phpcomplete-extended'  
    autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

" Snippets
" Neosnippets
Plug 'shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
    " Plugin key-mappings.
    " " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
   imap <C-k>     <Plug>(neosnippet_expand_or_jump)
   smap <C-k>     <Plug>(neosnippet_expand_or_jump)
   xmap <C-k>     <Plug>(neosnippet_expand_target)
"diaplay
" molokai theme for vim
Plug 'fatih/molokai'

" golden ratio for vim windows
Plug 'roman/golden-ratio'
  let g:golden_ratio_wrap_ignored = 1
" Php with html indenting
Plug 'captbaritone/better-indent-support-for-php-with-html'


" Vim Airline
Plug 'bling/vim-airline'
	" enables airline at startup
	set laststatus=2
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'

" Themes for Airline
Plug 'vim-airline/vim-airline-themes'
	
" Add Plugins to &runtimepath
call plug#end()
