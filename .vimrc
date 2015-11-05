set nocompatible              " be iMproved
set nu
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

"vim插件管理
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'fatih/vim-go'
Bundle 'majutsushi/tagbar.git'
Bundle 'Shougo/neocomplete.vim.git'
Bundle 'Valloric/YouCompleteMe'

Bundle 'jistr/vim-nerdtree-tabs.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'The-NERD-Commenter'

call vundle#end()            " required
filetyp plugin indent on     " required!

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

syntax enable
syntax on

"go相关的配置
let g:fencview_autodetect=1
let g:go_disable_autoinstall = 0
let g:neocomplete#enable_at_startup = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:godef_split=3
au BufRead,BufNewFile *.go set filetype=go


"全局设置
set cuc cul  "这个就是十字架
set autoindent
set smartindent
set showmatch
set ruler
set softtabstop=4
set shiftwidth=4
set ignorecase "大小写敏感
set ignorecase "大小写敏感
"颜色方案 
"https://github.com/tomasr/molokai/
"文件放到~/.vim/colors/molokai.vim
colorscheme  molokai
set t_Co=256  
let g:molokai_original = 1
let g:rehash256 = 1


" 设置NerdTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
let NERDChristmasTree=1
"autocmd VimEnter * NERDTree
let NERDTreeShowBookmarks=1
let NERDTreeWinPos='left'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore = ['\.pyc', '\.mod\.c', '\.o', '\.ko', '\.a', '\.so', 'CMakeFiles', '\.cmake', 'CMakeCache.txt']
"}}}


"Taglist"
let Tlist_Show_One_File = 1 " Displaying tags for only one file~
let Tlist_Exit_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_Use_SingleClick = 1 "to a tag on single mouse cliek"
let Tlist_Exit_OnlyWindow = 1 
let tlist_c_settings = 'c;f:My Functions'
let Tlist_Process_File_Always = 1
let Tlist_Use_Right_Window = 1
let Tlist_Sort_Type = "order"


" YCM{{{
" youcompleteme  默认tab  s-tab 和自动补全冲突
" let g:ycm_key_list_select_completion=['<c-n>']
" let g:ycm_key_list_select_completion = ['<Down>']
" let g:ycm_key_list_previous_completion=['<c-p>']
" let g:ycm_key_list_previous_completion = ['<Up>']
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
let g:ycm_confirm_extra_conf = 0      "关闭加载.ycm_extra_conf.py提示
let g:ycm_complete_in_comments = 1    "在注释输入中也能补全
let g:ycm_complete_in_strings = 1     "在字符串输入中也能补全
let g:ycm_seed_identifiers_with_syntax = 1                  " 语言关键字补全, 不过python关键字都很短，所以，需要的自己打开
let g:ycm_min_num_of_chars_for_completion = 1               " 从第2个键入字符就开始罗列匹配项
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_warning_symbol = '>>'
let g:ycm_error_symbol = '->'
nmap <leader>gd :YcmDiags<CR>
nnoremap <leader>gh :YcmCompleter GoToDeclaration<CR>           " 跳转到申明处
nnoremap <leader>gc :YcmCompleter GoToDefinition<CR>            " 跳转到定义处
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
