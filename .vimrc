set nocompatible              " be iMproved, required
" All of your Plugins must be added before the following line
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

call vundle#end()            " required
filetype plugin indent on    " required

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'w0rp/ale'
Plugin 'dNitro/vim-pug-complete'
Plugin 'digitaltoad/vim-pug'
Plugin 'wincent/command-t'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'https://github.com/miconda/lucariox.vim.git'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'leafgarland/typescript-vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let t:is_transparent = 0
function! Toggle_transparent()
  if t:is_transparent == 0
    hi Normal guibg=NONE ctermbg=NONE
    let t:is_transparent = 1
  else
    set background=dark
    let t:is_tranparent = 0
  endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>

let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }
set laststatus=2
set runtimepath^=~/.vim/bundle/ctrlp.vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1
:set number
augroup filetype javascript syntax=javascript
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1
let g:vim_jsx_pretty_enable_jsx_highlight = 1
let g:vim_jsx_pretty_colorful_config = 1
