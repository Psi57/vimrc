"---------------------------------------------------------------Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'sjl/gundo.vim'
Plugin 'fcitx.vim'
Plugin 'asins/vimcdoc'
Plugin 'bling/vim-airline'
Plugin 'szw/vim-ctrlspace'
Plugin 'junegunn/goyo.vim'
Plugin 'bling/vim-bufferline'
Plugin 'Valloric/ListToggle'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'dyng/ctrlsf.vim'
call vundle#end()            " required
filetype plugin indent on

"-------------------------------------------------显示行号,按下F2显示/隐藏
set number
nnoremap <F3> :set nonumber!<CR>:set foldcolumn=0<CR>

"--------------------------------------------高亮
syntax on
"if has('gui_running')
"        colorscheme solarized
"else
"        colorscheme flatlandia
"endif
"colorscheme flatlandia
colorscheme solarized
"colorscheme atom-dark
"colorscheme molokai
"let g:gruvbox_italic=1
"colorscheme gruvbox

"let g:rehash256 = 1
"let g:molokai_original = 1

" set the colorcolumn
"let g:solarized_visibility="low"
let g:solarized_termcolors=256
"let g:solarized_termtrans =   1
"let g:solarized_degrade   =   1
"let g:solarized_bold      =   0
"let g:solarized_underline =   0
"let g:solarized_italic    =   0
"let g:solarized_hitrail   =   1
"let g:solarized_menu      =   0
set background=dark
set cursorline
set cursorcolumn
set hlsearch
"-----------------------------缩进
"set noexpandtab / expandtab
set autoindent
set ts=4 sw=4
set smartindent " 智能对齐方式
"set smarttab " 智能tab
"-------------------------------------YouCompleteMe
" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0
let g:ycm_always_populate_location_list = 1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_key_list_select_completion = ['<Down>','<CR>']
let g:ycm_key_list_previous_completion=['<Up>']
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:syntastic_always_populate_loc_list = 1
let g:ycm_key_invoke_completion = '<C-N>'
nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <M-f> :YcmForceCompileAndDiagnostics<CR>
set completeopt-=preview "不在预览窗口显示

"-----------------------------NERDTreeToggle
map <F2> :NERDTreeToggle<CR>

let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let NERDTreeQuickOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
autocmd vimenter * NERDTreeToggle "auto start
"--------------------------------CtrlSpace
set nocompatible
set hidden

nnoremap <silent><C-[> :CtrlSpace<CR>
"----------------------------------------------------tagbar
nmap <F8> :TagbarToggle<CR>
"autocmd FileType c,cpp,h,hpp,cc,cxx,lua nested :TagbarOpen
let Tlist_Exit_OnlyWindow = 1 "exit when it is only 1 window
"let g:tagbar_left = 1 "left
"--------fold setting
set foldenable                        " 允许折叠
set foldmethod=syntax               " 折叠方式
set foldlevel=999999999                       " 引发折叠的层次
set foldcolumn=1                      " 折叠为1 行
"-----------------------------------------------UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ["Ultisnips","bundle/vim-snippets/UltiSnips"]
"----------------------------------------------ListToggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
"-----------------------syntax
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_lua_checkers = ['luac']

let g:syntastic_error_symbol = '>'
let g:syntastic_warning_symbol = '△'
"----------------------------------------------autoopen in begining
"autocmd vimenter * NERDTreeToggle

set guioptions-=T               "隐藏工具栏
set guioptions-=m               " 隐藏菜单栏
set guioptions-=b               "隐藏底部滚动栏
set guioptions-=l
set guioptions-=L               "~~~~左边~~~
set guioptions-=R
set guioptions-=r               "~~~~右边~~~
"-----------------------gundo
nnoremap <F10> :GundoToggle<CR>
"--------------------------etc 杂项
"对齐线
set cc=100
set ignorecase                        " 搜索时忽略大小写
set smartcase                         " 搜索内容中有大写字母才对大小写敏感
set whichwrap=b,s,<,>,[,] " 光标行首行尾时自动移动
set ruler " 总是显示当前光标位置
set wrapscan                          " 循环搜索
set hlsearch                          " 高亮搜索
set encoding=utf-8 " vim内部使用的编码方式
set showmatch " 显示括号匹配

