set smartindent
set number
set incsearch 

set number
set autoindent
set hlsearch
set incsearch
set smartindent
set mouse=a

function! Tab_Or_Complete()
if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
return "\<C-N>"
else
return "\<Tab>"
endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words
filetype plugin on
