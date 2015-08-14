"---------------------------------------------------------------Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'sjl/gundo.vim'
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
set background=dark
set cursorline
set cursorcolumn
set hlsearch
"-----------------------------缩进
set autoindent
set ts=4 sw=4
"-------------------------------------YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
let g:ycm_key_list_select_completion = ['<c-n>','<Down>','<CR>']
let g:ycm_key_list_previous_completion = ['<c-p>','<Up>']
" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
let g:ycm_key_invoke_completion = '<c-n>'
nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <M-f> :YcmForceCompileAndDiagnostics<CR>

set completeopt-=preview        "关闭详细信息
"-----------------------------NERDTreeToggle
map <F2> :NERDTreeToggle<CR>

let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let NERDTreeQuickOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
autocmd vimenter * NERDTreeToggle "auto start
"---------------------------------quickfix
":botright cw
nmap <F9> :botright cw<CR>
"----------------------------------------------------tagbar
nmap <F8> :TagbarToggle<CR>
"autocmd FileType c,cpp,h,hpp,cc,cxx,lua nested :TagbarOpen
let Tlist_Exit_OnlyWindow = 1 "exit when it is only 1 window
"let g:tagbar_left = 1 "left
"--------fold setting
set foldmethod=syntax " 用语法高亮来定义折叠
set nofoldenable " 启动vim时不要自动折叠代码
set foldcolumn=5 " 设置折叠栏宽度
"-----------------------------------------------UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ["Ultisnips","bundle/vim-snippets/UltiSnips"]
"----------------------------------------------autoopen in begining
"autocmd vimenter * NERDTreeToggle

set guioptions-=T               "隐藏工具栏
set guioptions-=m               " 隐藏菜单栏

""---------------------------- 替换函数。参数说明：
"" confirm：是否替换前逐一确认
"" wholeword：是否整词匹配
"" replace：被替换字符串
"function! Replace(confirm, wholeword, replace)
  "wa
  "let flag = ''
  "if a:confirm
    "let flag .= 'gec'
  "else
    "let flag .= 'ge'
  "endif
  "let search = ''
  "if a:wholeword
    "let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
  ""else
    "let search .= expand('<cword>')
  "endif
  "let replace = escape(a:replace, '/\&~')
  "execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
"endfunction
"nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
"" 不确认、整词
"nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
"" 确认、非整词
"nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
"" 确认、整词
"nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
"nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
"-----------------------gundo
nnoremap <F10> :GundoToggle<CR>
"--------------------------etc 杂项
"对齐线
:set cc=100
